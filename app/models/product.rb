class Product < ApplicationRecord
  has_attached_file :icon, styles: { medium: "1889x600>", thumb: "275x300>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :icon, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif", "application/pdf"]
	belongs_to :subcategory
	has_many :pictures, inverse_of: :product, dependent: :destroy
  belongs_to :discount, optional: true
	belongs_to :brand
  accepts_nested_attributes_for :pictures, reject_if: :all_blank, allow_destroy: true
end
