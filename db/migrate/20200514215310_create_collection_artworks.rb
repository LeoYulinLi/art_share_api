class CreateCollectionArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :collection_artworks do |t|
      t.integer :collection_id, null: false, index: true
      t.integer :artwork_id, null: false, index: true

      t.timestamps
    end
    add_index :collection_artworks, [:collection_id, :artwork_id], unique: true
  end
end
