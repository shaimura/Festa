class RemoveColumnFromFestival < ActiveRecord::Migration[5.2]
  def change
  	remove_column :festivals, :fes_imag_id, :string
  	remove_column :festivals, :fes_image, :string
  	add_column :festivals, :fes_image_id, :string
  end
end
