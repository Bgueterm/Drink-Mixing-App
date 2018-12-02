# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
<<<<<<< HEAD
=======

Liquor.create!([{ name: 'Rum' },
                { name: 'Vodka' },
                { name: 'Gin' },
                { name: 'Tequila' }])
                
Mixer.create!([{ name: 'Mint leaves' },
              { name: 'Simple syrup' },
              { name: 'Lime juice' },
              { name: 'Club soda' },
              { name: 'Ginger beer' },
              { name: 'Lemon juice' },
              { name: 'Cola' }])
              
Drink.create!([{ name: 'Mojito', alcoholPerVolume: 15.5, flavor: :Sweet, 
                description: "In a shaker, lightly muddle the mint.
 Add the rum, simple syrup and lime juice, fill with ice and strain.
 Pour into a highball glass.
 Top with the club soda.
 Garnish with a mint sprig.", liquor_ids: [1], mixer_ids: [1, 2, 3] },
                { name: 'Moscow Mule', alcoholPerVolume: 25.5, flavor: :Sour,
                  description: "Add all of the ingredients intoto a Moscow Mule mug (or highball glass) over ice.
 Garnish with a lime wheel.", liquor_ids: [2], mixer_ids: [3, 5] },
                { name: 'Long Island Iced Tea', alcoholPerVolume: 22.0, flavor: :Sweet,
                  description: "Add all the ingredients except the cola into a Collins glass with ice.
Top with a splash of the cola and stir briefly.
Garnish with a lemon wedge.", liquor_ids: [1, 2, 3, 4], mixer_ids: [2, 6, 7] }]) 
 
 p "Created #{Drink.count} drinks"
>>>>>>> master
