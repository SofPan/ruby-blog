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

post1.comments.create!({
  body: "Comment Loremp ipsum dolor sit amet 1",
}
)

post2.comments.create!({
  body: "Comment Loremp ipsum dolor sit amet 2",
})

post3.comments.create({
  body: "Comment Loremp ipsum dolor sit amet 3",
})
