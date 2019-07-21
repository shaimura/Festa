class Staffs::OrdersController < ApplicationController

  def new
  	@order = Order.new
  	@orders = Order.where(sutaff_id: current_staff.id)
  	@presents = Present.all
  end

  def create
  	order = Order.new(order_params)
  	staff = current_staff
  	order.staff = current_staff
  	order.save!
    staff.remaining_point -= order.present.use_point
    staff.save
  	redirect_to new_staffs_order_path
  end

  protected

  def order_params
	  	params.require(:order).permit(:id, :present_id, :staff_id)
  end

end
