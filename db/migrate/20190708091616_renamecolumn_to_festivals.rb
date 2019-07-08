class RenamecolumnToFestivals < ActiveRecord::Migration[5.2]
  def change
  	rename_column :festivals, :image_id, :fes_image_id
  end
end
