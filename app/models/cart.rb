class Cart < ApplicationRecord

  belongs_to :user

  serialize :products, Array

def cart_total
  total = 0
  products.each do |product|
    total += product.price
  end
  total
end

end
