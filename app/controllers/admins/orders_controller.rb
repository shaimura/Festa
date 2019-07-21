class Admins::OrdersController < ApplicationController

    def index
  	  @orders = Order.all
    end


  	def update
	 @order = Order.find(params[:id])
	 @order.update!(order_params)
	 redirect_to admins_orders_path
	end

	protected

	def order_params
	  	params.require(:order).permit(:id, :present_id, :staff_id)
    end


end
