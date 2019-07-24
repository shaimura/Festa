class Staffs::OrdersController < ApplicationController

  def new
  	@order = Order.new
    @staff = current_staff
  	@orders = Order.unscoped.where(staff_id: current_staff.id)
    @points = Point.unscoped.where(staff_id: current_staff.id)
  	@presents = Present.all
  end

  def create
  	order = Order.new(order_params)
  	staff = current_staff
  	order.staff = current_staff
  	if order.save!
       flash[:notice] = "登録しました"
  	   redirect_to new_staffs_order_path
    else
      flash[:alert] = "登録に失敗しました"
      render :new
    end

  end

  protected

  def order_params
	  	params.require(:order).permit(:id, :present_id, :staff_id)
  end

end
