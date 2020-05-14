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

a1 = Artwork.create(image_url: 'dsfds', title: 'fdsfd', artist_id: 1)
a2 = Artwork.create(image_url: 'hgfd', title: 'dsdfs', artist_id: 2)
Artwork.create(image_url: 'wewq', title: 'ht', artist_id: 1)
Artwork.create(image_url: 'dsfcvcxds', title: '112w', artist_id: 2)
Artwork.create(image_url: 'vcxa', title: '324s', artist_id: 3)

ArtworkShare.create(viewer_id: 1, artwork_id: 2)
ArtworkShare.create(viewer_id: 3, artwork_id: 2)
ArtworkShare.create(viewer_id: 4, artwork_id: 1)


c1 = Comment.create(user_id: 1, artwork_id: 2, body: "LLLLLL")
c2 = Comment.create(user_id: 2, artwork_id: 3, body: "fdksal;f")
Comment.create(user_id: 3, artwork_id: 2, body: "dtg;")
Comment.create(user_id: 4, artwork_id: 1, body: "hello my name is bob")

Like.create(content: c1, user_id: 1)
Like.create(content: c2, user_id: 1)
Like.create(content: a1, user_id: 1)
Like.create(content: a2, user_id: 1)
Like.create(content: a1, user_id: 2)
Like.create(content: a2, user_id: 3)
Like.create(content: a1, user_id: 3)
Like.create(content: a2, user_id: 4)

Collection.create(user_id: 1, name: "Bob")
Collection.create(user_id: 2, name: "Rob")
Collection.create(user_id: 3, name: "Gob")
Collection.create(user_id: 4, name: "Nob")
Collection.create(user_id: 4, name: "Lob")
Collection.create(user_id: 4, name: "Sob")

CollectionArtwork.create(collection_id: 1, artwork_id: 1)
CollectionArtwork.create(collection_id: 2, artwork_id: 5)
CollectionArtwork.create(collection_id: 4, artwork_id: 3)
CollectionArtwork.create(collection_id: 2, artwork_id: 2)
CollectionArtwork.create(collection_id: 2, artwork_id: 4)
CollectionArtwork.create(collection_id: 4, artwork_id: 4)
CollectionArtwork.create(collection_id: 4, artwork_id: 5)
CollectionArtwork.create(collection_id: 4, artwork_id: 1)


