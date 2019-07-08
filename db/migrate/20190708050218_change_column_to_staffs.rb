class ChangeColumnToStaffs < ActiveRecord::Migration[5.2]
  def change
  	add_column :staffs, :telephone_number, :string
  	rename_column :staffs, :use_point, :remaining_point
  end
end
