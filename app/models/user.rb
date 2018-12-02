class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :name, presence: true
  
         
         def user_params
           
           params.require(:user).permit(:name, :vendor, :email, :password_confirmation, :remember_me)
         end
         
         has_many:orders, dependent: :destroy
         has_many:products, dependent: :destroy
end
