class Product < ApplicationRecord
  belongs_to :category
  has_one_attached :image
  
  validates :name, :description, :price, presence: true
  validates :price, numericality: {greater_than: 0 }
  def thumbnail
    return self.image.variant(resize: '300x300!')
  end
  belongs_to :user
    
end
