class CreateCollections < ActiveRecord::Migration[5.2]
  def change
    create_table :collections do |t|
      t.integer :user_id, null: false, index: true
      t.string :name, null: false

      t.timestamps
    end
  end
end
