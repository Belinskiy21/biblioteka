class Book < ApplicationRecord
  mount_uploader :file, ImageUploader
end
