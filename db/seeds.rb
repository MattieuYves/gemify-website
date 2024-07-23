# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Portefolio.destroy_all

portefolios = [
  { name: "Portefolio 1", photo: "https://res.cloudinary.com/dosx01t1h/image/upload/v1720449288/Capture_d_e%CC%81cran_2024-07-08_a%CC%80_16.34.30_bexyvp.png", presentation: "Présentation du portefolio 1" },
  { name: "Portefolio 2", photo: "https://res.cloudinary.com/dosx01t1h/image/upload/v1720449288/Capture_d_e%CC%81cran_2024-07-08_a%CC%80_16.34.30_bexyvp.png", presentation: "Présentation du portefolio 2" },
  { name: "Portefolio 3", photo: "https://res.cloudinary.com/dosx01t1h/image/upload/v1720449288/Capture_d_e%CC%81cran_2024-07-08_a%CC%80_16.34.30_bexyvp.png", presentation: "Présentation du portefolio 3" },
  { name: "Portefolio 4", photo: "https://res.cloudinary.com/dosx01t1h/image/upload/v1720449288/Capture_d_e%CC%81cran_2024-07-08_a%CC%80_16.34.30_bexyvp.png", presentation: "Présentation du portefolio 4" },
  { name: "Portefolio 5", photo: "https://res.cloudinary.com/dosx01t1h/image/upload/v1720449288/Capture_d_e%CC%81cran_2024-07-08_a%CC%80_16.34.30_bexyvp.png", presentation: "Présentation du portefolio 5" }
]

portefolios.each do |portefolio|
  Portefolio.create!(portefolio)
end

puts "5 portefolios have been created."
