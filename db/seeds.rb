# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user = User.first
text = "Unfinished Dream of All Living Ghost was first announced at Touhou Yomoyama News on April 14, 2023, along with information about the story and gameplay, including development screenshots that revealed the 5 characters that would be playable in the demo. The trial CD was released on May 7th, 2023 at Reitaisai 20.

On August 11th, 2023, a notice about the game was put out on Touhou Yomoyama News, detailing that its price was increased to 1500 yen from 1400 due to the current market prices, and that DirectX will not be included with it in the disk due to the total size of the game being bigger than usual.

The full game released on August 13th, 2023 at Comiket 102, with its release on Steam happening on the same day 8 hours after."

p 'Starting ...'

  Category.all.each do |category|
    30.times do
      Article.create!(
        title: "Article #{rand(100000)}",
        body: text,
        category_id: category.id,
        user_id: user.id,
        created_at: rand(365).days.ago
      )
    end
  end

p 'Finish!'
