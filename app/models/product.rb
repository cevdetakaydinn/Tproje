class Product < ApplicationRecord
  	has_attached_file :icon, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :icon, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif", "application/pdf"]
	belongs_to :subcategory
	has_many :pictures, dependent: :destroy
	has_one :extra_spec, dependent: :destroy
	belongs_to :brand, dependent: :destroy
end
