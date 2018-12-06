class Product < ApplicationRecord
  belongs_to :category
  has_one_attached :image
  
  validates :name, :description, :price, :image, presence: true
  validates :price, numericality: {greater_than: 0 }
  validate :correct_image_type
  
  def correct_image_type
    if image.attached? && !image.content_type.in?(%w(image/jpeg image.png))
      errors.add(:image, 'jpeg or png only')
      elsif image.attached? == false
      errors.add(:image, 'Please provide an image.')
    end
  end
  
  def thumbnail
    return self.image.variant(resize: '340x300!')
  end
    def page
    return self.image.variant(resize: '500x400!')
    end
  belongs_to :user
    
end
