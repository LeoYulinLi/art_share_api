class AlterArtworkShare < ActiveRecord::Migration[5.2]
  def change
    add_column :artwork_shares, :favorite_artwork, :boolean, default: false, null: false
  end
end
