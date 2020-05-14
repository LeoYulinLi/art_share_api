class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :user_id, null: false
      t.references :content, polymorphic: true

      t.timestamps
    end
    add_index :likes, [:user_id, :content_id, :content_type], unique: true
    add_index :likes, :user_id
    add_index :likes, :content_id
  end
end
