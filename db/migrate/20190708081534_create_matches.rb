class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|

    	t.integer :festival_id
    	t.integer :staff_id

      t.timestamps
    end
  end
end
