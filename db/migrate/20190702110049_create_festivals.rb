class CreateFestivals < ActiveRecord::Migration[5.2]
  def change
    create_table :festivals, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|

      t.timestamps
    end
  end
end
