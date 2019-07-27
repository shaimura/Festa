class CreateStaffInquiries < ActiveRecord::Migration[5.2]
  def change
    create_table :staff_inquiries, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
    	t.integer :staff_id
    	t.string :message
    	t.integer :inquiri_status,  null: false, default: 0

      t.timestamps
    end
  end
end
