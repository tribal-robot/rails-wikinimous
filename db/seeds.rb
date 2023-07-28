# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

10.times do
  title = "#{Faker::Adjective.positive.capitalize} #{Faker::Nation.nationality} #{Faker::Hacker.noun.capitalize}"
  content = "#{Faker::Lorem.sentence} #{Faker::Lorem.paragraph(sentence_count: 8)}"
  new_article = Article.new({ title:, content: })
  new_article.save
end
