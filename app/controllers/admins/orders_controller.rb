class Admins::OrdersController < ApplicationController
	before_action :authenticate_admin!

    def index
  	  @orders = Order.unscoped.all
    end


  	def update
	 @order = Order.find(params[:id])
	 if @order.update(order_params)
	 	flash[:notice] = "変更しました"
	 	redirect_to admins_orders_path
	 else
	 	@orders = Order.unscoped.all
	 	flash[:alert] = "変更に失敗しました"
	 	render :index
	 end

	end

	protected

	def order_params
	  	params.require(:order).permit(:id, :present_id, :staff_id)
    end


end
