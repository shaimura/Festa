class Order < ApplicationRecord

	belongs_to :staff
	belongs_to :present

	enum order_status:{準備中: 0, 配送中: 1}
end
