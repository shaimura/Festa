class ChangeDateToFestivals < ActiveRecord::Migration[5.2]

  def up
  	change_column :festivals, :date, :date
  end

  def down
  	change_column :festivals, :date, :string
  end
end
