class Blog < ApplicationRecord
  belongs_to :user
  mount_uploader :picture, ImageUploader
end
