class DropOrganizationInquiries < ActiveRecord::Migration[5.2]
  def change
  	drop_table :organization_inquiries
  end
end
