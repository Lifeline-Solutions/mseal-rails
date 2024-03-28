class Cart < ApplicationRecord
  has_many :orderables
  has_many :products, through: :orderables
  def total_price
    orderables.to_a.sum(&:total)
  end
end
