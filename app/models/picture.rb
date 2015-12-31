class Picture < ActiveRecord::Base
  belongs_to :product
  has_attached_file :photo
  validates_attachment :photo, content_type: { content_type:     ["image/jpg", "image/jpeg", "image/png"] }
end
