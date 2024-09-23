puts "Seeding data..."

unless Rails.env.development?
  puts "Development seeds only (for now)!"
  exit 0
end

puts "Re-creating Posts..."

Post.destroy_all

post1 = Post.create!({
  title: "THis blog is lit!",
  body: "Loremp ipsum dolor sit amet 1"
})

post2 = Post.create!({
  title: "Another post!",
  body: "Loremp ipsum dolor sit amet 2"
})

post3 = Post.create!({
  title: "Another!",
  body: "Loremp ipsum dolor sit amet 3"
})

puts "Re-creating comments..."
Comment.destroy_all

Comment.create!([{
  body: "Comment Loremp ipsum dolor sit amet 1",
  post_id: 1
},
{
  body: "Comment Loremp ipsum dolor sit amet 2",
  post_id: 2
},
{
  body: "Comment Loremp ipsum dolor sit amet 3",
  post_id: 3
}
])