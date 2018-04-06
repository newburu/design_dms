class Design < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  
  belongs_to :genre, optional: true
  belongs_to :collar_type, optional: true
  belongs_to :sleeve_type, optional: true
  belongs_to :cuff_type, optional: true
  belongs_to :swimsuit_type, optional: true
  belongs_to :tops_type, optional: true
  belongs_to :skirt_type, optional: true
  belongs_to :size, optional: true
  belongs_to :sex, optional: true
  belongs_to :user
  belongs_to_active_hash :open_type, optional: true

  mount_uploader :design_img, ImageUploader
  mount_uploader :pattern_img, ImageUploader
  mount_uploader :finished_img, ImageUploader

  validates :name, presence: true
  validates :user, presence: true

  # 作成者と一致するか？(※current_userを渡して、ログイン者とチェック)
  def user_eq?(user)
    self.user == user
  end

  # ユーザが参照可能か？(※current_userを渡して、ログイン者とチェック)
  def can_view?(user)
    flg = false
    # 全体公開
    flg = true if self.open_type == OpenType::ALL
    if user.present?
      # 自分のみ
      flg = true if self.open_type == OpenType::MY_ONLY && self.user == user
      # フォロワーのみ
      user = User.find(user.id)
      flg = true if self.open_type == OpenType::FOLLOWER_ONLY && (self.user == user || user.friends.include?(self.user))
    end
    
    flg
  end

end
