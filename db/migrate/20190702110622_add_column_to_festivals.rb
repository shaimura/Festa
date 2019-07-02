class AddColumnToFestivals < ActiveRecord::Migration[5.2]
  def change
  	add_column :festivals, :name, :string
  	add_column :festivals, :organization_id, :integer
  	add_column :festivals, :area, :integer
  	add_column :festivals, :address, :string
  	add_column :festivals, :web_url, :string
  	add_column :festivals, :profile, :string
  	add_column :festivals, :date, :string
  	add_column :festivals, :traffic, :string
  	add_column :festivals, :fes_imag_id, :string
  	add_column :festivals, :staff_status, :integer
  	add_column :festivals, :longitude, :float
  	add_column :festivals, :latitude, :float
  	add_column :festivals, :deleted_at, :datetime
  	add_index :festivals, :deleted_at
  end
end


