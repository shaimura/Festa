class AddColumnToorganizations < ActiveRecord::Migration[5.2]
  def change
  	add_column :organizations, :postalcode, :string
  	add_column :organizations, :address, :string
  	add_column :organizations, :deleted_at, :datetime
  	add_index :organizations, :deleted_at
  end
end
