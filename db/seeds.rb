# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Recipe.destroy_all

Recipe.create!([
  {
    name: 'Spaghetti Carbonara',
    description: 'A classic Italian pasta dish made with eggs, cheese, pancetta, and pepper.',
    rating: 9,
    image_url: 'https://via.placeholder.com/150?text=Spaghetti+Carbonara'
  },
  {
    name: 'Chicken Parmesan',
    description: 'A delicious breaded chicken breast covered in marinara sauce and mozzarella cheese.',
    rating: 8,
    image_url: 'https://via.placeholder.com/150?text=Chicken+Parmesan'
  },
  {
    name: 'Beef Stroganoff',
    description: 'A Russian dish of sautéed beef in a rich, creamy sauce served over noodles.',
    rating: 7,
    image_url: 'https://via.placeholder.com/150?text=Beef+Stroganoff'
  },
  {
    name: 'Vegetable Stir Fry',
    description: 'A quick and healthy stir fry made with fresh vegetables and a soy-based sauce.',
    rating: 6,
    image_url: 'https://via.placeholder.com/150?text=Vegetable+Stir+Fry'
  }
]
)
puts "succefully seeded #{Recipe.count} recipes!"
