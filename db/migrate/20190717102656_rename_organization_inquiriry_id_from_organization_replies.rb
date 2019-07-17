class RenameOrganizationInquiriryIdFromOrganizationReplies < ActiveRecord::Migration[5.2]
  def change
  	rename_column :organization_replies, :organization_inquiriry_id, :organization_inquiry_id
  end
end
