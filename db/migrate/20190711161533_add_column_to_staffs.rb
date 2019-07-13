class AddColumnToStaffs < ActiveRecord::Migration[5.2]
  def change
  	add_column :staffs, :postalcode, :string
  	add_column :staffs, :address, :string
  	add_column :staffs, :telephone, :string
  	add_column :staffs, :total_point, :integer, null: false, default: 0
  	add_column :staffs, :remaining_point, :integer, null: false, default: 0
  	add_column :staffs, :deleted_at, :datetime
  	add_index :staffs, :deleted_at
  end

end
