class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
    	t.integer :present_id
    	t.integer :staff_id
    	t.integer :order_status

      t.timestamps
    end
  end
end
