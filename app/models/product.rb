class Product < ApplicationRecord
	belongs_to :subcategory
	has_many :pictures, dependent: :destroy
	has_one :extra_spec, dependent: :destroy
end
