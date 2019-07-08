class CreatePresents < ActiveRecord::Migration[5.2]
  def change
    create_table :presents do |t|

    	t.string :product
    	t.string :product_image_id
    	t.integer :use_point, null: false, default: 0
    	t.datetime :deleted_at

      t.timestamps
    end

    add_index :presents, :deleted_at
  end
end
