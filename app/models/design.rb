class Design < ApplicationRecord
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

  mount_uploader :design_img, ImageUploader
  mount_uploader :pattern_img, ImageUploader
  mount_uploader :finished_img, ImageUploader

  validates :name, presence: true
  validates :user, presence: true

  # 作成者と一致するか？(※current_userを渡して、ログイン者とチェック)
  def user_eq?(user)
    self.user == user
  end

end
