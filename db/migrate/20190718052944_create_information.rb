class CreateInformation < ActiveRecord::Migration[5.2]
  def change
    create_table :information, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|

    	t.integer :festival_id
    	t.string :message

      t.timestamps
    end
  end
end
