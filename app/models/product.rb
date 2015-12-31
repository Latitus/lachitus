class Product < ActiveRecord::Base
  has_attached_file :thumbnail_img, :styles => { :medium => "238x238>", :thumb => "100x100>" }
  has_attached_file :cover_img, :styles => { :large => "1024x768>", :medium => "640x320>" }
  validates_attachment :thumbnail_img, content_type: { content_type:     ["image/jpg", "image/jpeg", "image/png"] }
  validates_attachment :cover_img, content_type: { content_type:     ["image/jpg", "image/jpeg", "image/png"] }

  has_many :pictures
  accepts_nested_attributes_for :pictures, allow_destroy: true
end
