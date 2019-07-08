class RenamecolumnToPresents < ActiveRecord::Migration[5.2]
  def change
  	rename_column :presents, :product_image_id, :present_image_id
  	rename_column :presents, :product, :present
  end
end
