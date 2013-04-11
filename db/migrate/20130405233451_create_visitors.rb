class CreateVisitors < ActiveRecord::Migration
  def change
    create_table :visitors do |t|
        t.string :ip_address
        t.string :email_address
        t.string :referrer
        t.integer :link_item_id

        t.timestamps
      end
  end
end
