class RemoveFesImagFromFestival < ActiveRecord::Migration[5.2]
  def change
    remove_column :festivals, :fes_imag, :string
  end
end
