class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 has_one :cart, dependent: :destroy

 after_create :create_cart

 private
 def create_cart
   self.cart = Cart.create
 end
end
