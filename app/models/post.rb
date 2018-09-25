class Post < ApplicationRecord
  mount_uploader :image, ImageUploader

  validates :title, presence: true, length: { in: 5..25}
  validates :when, presence: true
  validates :story, length: { maximum: 5000 }
  validates :image, file_size: { less_than: 1.megabytes }
end
