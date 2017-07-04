class Tag < ApplicationRecord
  has_many :product_tags, inverse_of: :tag
  has_many :products, through: :product_tags
end
