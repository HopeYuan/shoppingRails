class PurchasesController < ApplicationController
	def show
		@purchase=Purchase.find(params[:id])
		@product=Product.find(@purchase.product_id)
		
	end
end