class Order < ApplicationRecord

	belongs_to :staff
	belongs_to :present

	enum order_status:{準備中: 0, 配送中: 1}



   def staff
   	Staff.unscoped{super}
   end


   def present
    Present.unscoped{super}
   end



end
