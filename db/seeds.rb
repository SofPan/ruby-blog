# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Post.destroy_all
Comment.destroy_all

Post.create!([{
  title: "THis blog is lit!",
  body: "Loremp ipsum dolor sit amet 1"
},
{
  title: "Another post!",
  body: "Loremp ipsum dolor sit amet 2"
},
{
  title: "Another!",
  body: "Loremp ipsum dolor sit amet 3"
},
])

Comment.create!([{
  body: "Loremp ipsum dolor sit amet 1"
},
{
  body: "Loremp ipsum dolor sit amet 2"
},
{
  body: "Loremp ipsum dolor sit amet 3"
},
])

