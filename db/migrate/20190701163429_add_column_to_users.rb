class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :area, :integer, null: false, default: 0
  	add_column :users, :deleted_at, :datetime
  	add_index :users, :deleted_at
  end
end
