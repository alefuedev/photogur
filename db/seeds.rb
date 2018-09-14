# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

User.create(
	nickname: "Alfa",
	password: "1"
)

User.create(
	nickname: "Beta",
	password: "1"
)

Picture.create(
  title:  'The old church',
  artist: 'Sergey Ershov',
  url:    'http://bitmakerlabs.s3.amazonaws.com/photogur/house.jpg',
	user_id: 2 
)

Picture.create(
  title:  'Sea Power',
  artist: 'Stephen Scullion',
  url:    'http://bitmakerlabs.s3.amazonaws.com/photogur/wave.jpg',
  user_id: 1
)

Picture.create(
  title:  'Into the Poppies',
  artist: 'John Wilhelm',
  url:    'http://bitmakerlabs.s3.amazonaws.com/photogur/girl.jpg',
	user_id: 1
)
