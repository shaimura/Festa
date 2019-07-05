class RenameFesImageIdColumnToFestivals < ActiveRecord::Migration[5.2]
  def change
  	rename_column :festivals, :fes_image_id, :image_id
  end
end
