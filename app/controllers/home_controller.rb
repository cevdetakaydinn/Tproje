class HomeController < ApplicationController
	def index
		@home_banner  = true
		@discounts = Product.where(discount_id: Discount.where.not(amount: nil)).limit(6)
	end
	def show
		@products = Product.all
		if params[:sub]
			@products = Product.where(subcategory_id: params[:sub])
		elsif params[:brand]
			@products = Product.where(brand_id: params[:brand])
		end

	end
	def contact
	end

end
