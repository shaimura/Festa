class CreateOrganizationReplies < ActiveRecord::Migration[5.2]
  def change
    create_table :organization_replies do |t|
    	t.integer :organization_inquiriry_id
    	t.integer :admin_id
    	t.string :message

      t.timestamps
    end
  end
end
