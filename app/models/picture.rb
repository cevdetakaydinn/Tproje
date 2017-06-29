class Picture < ApplicationRecord
  has_attached_file :image, styles: { medium: "1889x600!", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif", "application/pdf"]
	belongs_to :product
end
