# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
10.times do
  Article.create(
    title: Faker::Lorem.sentence(word_count: 3), # Titre de 3 mots
    content: Faker::Lorem.paragraph(sentence_count: 5) # Paragraphe de 5 phrases
  )
end

puts '10 fake articles were created!'
