# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


user = User.create!(
  email: "test@test.com",
  password: "qweqwe123",
  first_name: "Nikita",
  last_name: "Butnar"
)

Post.create!(title: "First post", body: "Some description 1th post", user: user)
Post.create!(title: "Second post", body: "Some description 2th post", user: user)
