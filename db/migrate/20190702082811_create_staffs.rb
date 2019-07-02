class CreateStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :staffs do |t|

    	t.string :last_name
    	t.string :first_name
    	t.string :postalcode
    	t.string :address
    	t.datetime :deleted_at
    	t.integer :user_id

      t.timestamps
    end
    add_index :staffs, :deleted_at
  end
end
