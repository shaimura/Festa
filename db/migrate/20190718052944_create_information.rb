class CreateInformation < ActiveRecord::Migration[5.2]
  def change
    create_table :information do |t|

    	t.integer :festival_id
    	t.string :message

      t.timestamps
    end
  end
end
