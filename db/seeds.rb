# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
user = User.where(email: "rk_bart@yahoo.com").first_or_initialize
user.update!(
    password: "password123",
    password_confirmation: "password123"
)

# db/seeds.rb

Post.create([
  {
    title: "The Future of Web Development",
    body: "Web development is constantly evolving, with new frameworks, libraries, and best practices emerging. In this post, we explore the latest trends in web development and what to expect in the future."
  },
  {
    title: "Mastering the Art of Productivity",
    body: "Struggling with time management? Here are 10 proven strategies to boost your productivity, from the Pomodoro Technique to deep work principles."
  },
  {
    title: "Exploring the Beauty of Nature",
    body: "Nature has a profound impact on our well-being. In this post, we take a journey through breathtaking landscapes and discuss why spending time in nature is essential for mental health."
  },
  {
    title: "The Rise of AI in Everyday Life",
    body: "Artificial Intelligence is no longer a futuristic concept—it’s already shaping our daily lives. From smart assistants to self-driving cars, here’s how AI is changing the world."
  },
  {
    title: "How to Start a Successful Side Hustle",
    body: "Want to make extra income? This guide covers step-by-step tips on how to launch a profitable side hustle, even if you have a full-time job."
  },
  {
    title: "The Best Books to Read This Year",
    body: "Looking for your next great read? Here’s a list of must-read books across different genres, from fiction to personal development."
  },
  {
    title: "The Power of Daily Meditation",
    body: "Meditation isn’t just for monks. Discover how a simple daily meditation practice can improve your focus, reduce stress, and enhance overall well-being."
  },
  {
    title: "A Beginner’s Guide to Investing",
    body: "Thinking about investing but don’t know where to start? This guide breaks down the basics of stocks, bonds, and real estate investing in simple terms."
  }
])

puts "✅ Seed data inserted successfully!"
