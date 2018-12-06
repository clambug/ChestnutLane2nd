class Category < ApplicationRecord
    has_one_attached :image
    
  def thumbnail
    return self.image.variant(resize: '450x300!')
  end

end
