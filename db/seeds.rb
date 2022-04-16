# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

post_titles = File.open(Rails.root.join("lib/seeds/fixtures.txt"))

post_titles.each_line.with_index do |title, i|
  Post.create!(
    title: title.chomp,
    author: Faker::Name.name,
    comments_count: (0..10).to_a.sample,
    created_at: (100 - i).hours.ago
  )
end
