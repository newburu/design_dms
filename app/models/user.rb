class User < ApplicationRecord
  devise :trackable, :omniauthable
  
  # 現在のフレンド（フォロー）さん一覧
  has_many :friends
  accepts_nested_attributes_for :friends

  # 設定
  has_one :option, :class_name => "UserOption"
  accepts_nested_attributes_for :option

  validates :name, presence: true, uniqueness: true

  #############
  # スコープ
  scope :auto_update_users, -> {includes(:option).where(user_options: {auto_update_flg: true})}

  def self.new_with_session(params, session)
    if session["devise.user_attributes"]
      new(session["devise.user_attributes"], without_protection: true) do |user|
        user.attributes = params
        user.valid?
      end
    else
      super
    end
  end
  
  def self.find_for_twitter_oauth(auth, signed_in_resource=nil)
    user = User.where(:provider => auth.provider, :uid => auth.uid).first
    unless user
      user = User.create(name: auth.info.name,
                         screen_name: auth.info.nickname,
                          provider: auth.provider,
                          uid: auth.uid,
#                          email:auth.extra.user_hash.email, #色々頑張りましたがtwitterではemail取得できません
                          password: Devise.friendly_token[0,20],
                          access_token: auth.credentials.token,
                          access_token_secret: auth.credentials.secret
                          )
    else
      user.update(access_token: auth.credentials.token,access_token_secret: auth.credentials.secret)
    end
    user
  end

  # フレンド（フォロー）さん一覧を更新
  def update_friends(client)
    # Twitterから取得
    begin
      # 入れ直す為に、全削除
      self.friends.delete_all

      # フレンド（フォロー）一覧を取得
      friend_ids = client.friend_ids(user_id: self.uid).to_a
      friends = friend_ids.each_slice(100).to_a.inject ([]) do |users, ids|
        users.concat(client.users(ids))
      end
      friends.each do |f|
        friend = Friend.new(user: self, uid: f.id, name: f.name, screen_name: f.screen_name)
        self.friends << friend
      end
      self.followers.each do |f|
        # フォロワーの状態チェック
        f.check_status
      end

      self.save
      
    rescue Twitter::Error::TooManyRequests => error
      sleep error.rate_limit.reset_in
      retry
    end
  end

  def twitter_client
    Twitter::REST::Client.new do |config|
        config.consumer_key        = ENV["TWITTER_API_KEY"]
        config.consumer_secret     = ENV["TWITTER_SECRET_KEY"]
        config.access_token        = access_token
        config.access_token_secret = access_token_secret
    end
  end

end
