class ChangeAreaToFestivals < ActiveRecord::Migration[5.2]

  def up
  	change_column :festivals, :area, :integer, null: false, default: 0
  	change_column :festivals, :staff_status, :integer, null: false, default: 0
  end

  def down
  	change_column :festivals, :area, :integer, null: true
  	change_column :festivals, :staff_status, :integer, null: true
  end
end
