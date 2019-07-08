class CreatePoints < ActiveRecord::Migration[5.2]
  def change
    create_table :points do |t|

    	t.integer :festival_id
    	t.integer :staff_id
    	t.integer :plus_point, null: false, default: 0

      t.timestamps
    end
  end
end
