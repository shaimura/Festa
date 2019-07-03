class AddPointToStaffs < ActiveRecord::Migration[5.2]
  def change
  	add_column :staffs, :total_point, :integer, null: false, default: 0
  	add_column :staffs, :use_point, :integer, null: false, default: 0
  end
end
