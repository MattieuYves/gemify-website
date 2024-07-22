# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Portfolio.destroy_all

portfolios = [
  { name: "Portfolio 1", photo: "https://res.cloudinary.com/dosx01t1h/image/upload/v1720449288/Capture_d_e%CC%81cran_2024-07-08_a%CC%80_16.34.30_bexyvp.png", video: "video1.mp4", presentation: "Présentation du portfolio 1" },
  { name: "Portfolio 2", photo: "https://res.cloudinary.com/dosx01t1h/image/upload/v1720449288/Capture_d_e%CC%81cran_2024-07-08_a%CC%80_16.34.30_bexyvp.png", video: "video2.mp4", presentation: "Présentation du portfolio 2" },
  { name: "Portfolio 3", photo: "https://res.cloudinary.com/dosx01t1h/image/upload/v1720449288/Capture_d_e%CC%81cran_2024-07-08_a%CC%80_16.34.30_bexyvp.png", video: "video3.mp4", presentation: "Présentation du portfolio 3" },
  { name: "Portfolio 4", photo: "https://res.cloudinary.com/dosx01t1h/image/upload/v1720449288/Capture_d_e%CC%81cran_2024-07-08_a%CC%80_16.34.30_bexyvp.png", video: "video4.mp4", presentation: "Présentation du portfolio 4" },
  { name: "Portfolio 5", photo: "https://res.cloudinary.com/dosx01t1h/image/upload/v1720449288/Capture_d_e%CC%81cran_2024-07-08_a%CC%80_16.34.30_bexyvp.png", video: "video5.mp4", presentation: "Présentation du portfolio 5" }
]

portfolios.each do |portfolio|
  Portfolio.create!(portfolio)
end

puts "5 portfolios have been created."
