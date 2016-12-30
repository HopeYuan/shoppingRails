class ChargesController < ApplicationController
	def create
  # Amount in cents


  product=Product.find(params[:product_id])
  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken],
    :plan => product.sku
  )

  
 

 purchase = Purchase.create(email: params[:stripeEmail], card: params[:stripeToken], 
  amount: product.price_in_cents, description: product.description,
   currency: "usd", customer_id: customer.id, product_id: product.id)

redirect_to purchase
rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_charge_path
end
		
	end