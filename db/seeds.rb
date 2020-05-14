# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

a = User.create(username: 'asdf')
b = User.create(username: 'fjdk')
c = User.create(username: 'afgdgsdf')
User.create(username: 'fds')
User.create(username: 'uiuytu')

Artwork.create(image_url: 'dsfds', title: 'fdsfd', artist_id: 1)
Artwork.create(image_url: 'hgfd', title: 'dsdfs', artist_id: 2)
Artwork.create(image_url: 'wewq', title: 'ht', artist_id: 1)
Artwork.create(image_url: 'dsfcvcxds', title: '112w', artist_id: 2)
Artwork.create(image_url: 'vcxa', title: '324s', artist_id: 3)

ArtworkShare.create(viewer_id: 1, artwork_id: 2)
ArtworkShare.create(viewer_id: 3, artwork_id: 2)
ArtworkShare.create(viewer_id: 4, artwork_id: 1)