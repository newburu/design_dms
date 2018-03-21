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
end
