class AddFesImageToFestivals < ActiveRecord::Migration[5.2]
  def change
    add_column :festivals, :fes_image, :string
  end
end
