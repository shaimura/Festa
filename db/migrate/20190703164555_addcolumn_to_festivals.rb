class AddcolumnToFestivals < ActiveRecord::Migration[5.2]
  def change
  	add_column :festivals, :longitude, :float
  	add_column :festivals, :latitude, :float
  end
end
