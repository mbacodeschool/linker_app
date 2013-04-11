class CreateLinkItems < ActiveRecord::Migration
  def change
    create_table :link_items do |t|
      t.string :original_url
      t.string :short_name
      t.string :password
      t.boolean :needs_email

      t.timestamps
    end
  end
end
