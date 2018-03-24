class Design < ApplicationRecord
  belongs_to :genre
  belongs_to :collar_type
  belongs_to :sleeve_type
  belongs_to :cuff_type
  belongs_to :swimsuit_type
  belongs_to :tops_type
  belongs_to :skirt_type
  belongs_to :size
  belongs_to :sex
  belongs_to :user

  mount_uploader :design_img, ImageUploader
  mount_uploader :pattern_img, ImageUploader
  mount_uploader :finished_img, ImageUploader

  validates :name, presence: true
  validates :user, presence: true

end
