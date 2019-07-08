class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
    	t.integer :present_id
    	t.integer :staff_id
    	t.integer :order_status

      t.timestamps
    end
  end
end
