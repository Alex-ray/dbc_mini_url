class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :name
      t.string :address
      t.datetime :expires_at
      t.references :user

      t.timestamps
    end
    add_index :urls, :user_id
  end
end
