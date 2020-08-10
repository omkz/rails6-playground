class Photo < ApplicationRecord
  include ImageUploader::Attachment(:image) # adds an `image` virtual attribute
  
  validates :title, presence: true
  validates :image, presence: true

end
