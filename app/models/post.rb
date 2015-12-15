class Post < ActiveRecord::Base
validates :title, presence: true, length: {minimum: 10, maximum: 50}
validates :summary, presence: true, length: {minimum: 30, maximum: 150}
validates :description, presence: true, length: {minimum: 100}
validate :picture_size

mount_uploader :picture, PictureUploader



 private

  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, "should be less than 5MB")
    end
  end
end
