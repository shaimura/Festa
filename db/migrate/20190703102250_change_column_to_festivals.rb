class ChangeColumnToFestivals < ActiveRecord::Migration[5.2]
  def change
  	remove_column :festivals, :longitude, :float
  	remove_column :festivals, :latitude, :float
  end
end
