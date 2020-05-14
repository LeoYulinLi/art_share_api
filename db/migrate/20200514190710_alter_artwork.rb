class AlterArtwork < ActiveRecord::Migration[5.2]
  def change
    add_column :artworks, :favorite_artwork, :boolean, default: false, null: false
  end
end
