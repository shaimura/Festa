class CreateOrganizationReplies < ActiveRecord::Migration[5.2]
  def change
    create_table :organization_replies, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
    	t.integer :organization_inquiriry_id
    	t.integer :admin_id
    	t.string :message

      t.timestamps
    end
  end
end
