class CreateStaffReplies < ActiveRecord::Migration[5.2]
  def change
    create_table :staff_replies do |t|

    	t.integer :staff_inquiry_id
    	t.integer :admin_id
    	t.string :message

      t.timestamps
    end
  end
end
