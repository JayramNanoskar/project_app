class Image < ApplicationRecord
  belongs_to :user
  has_many :order_lines

  mount_uploader :picture, PictureUploader
  validate :picture_size

  validates_presence_of :name
  validates_presence_of :picture

  private

  def picture_size
    if picture.size > 5.kilobytes
      errors.add(:picture,  "should be less than 5MB")
    end
  end
end
