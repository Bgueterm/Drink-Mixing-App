# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Liquor.create([{ name: 'Rum' },
                { name: 'Vodka' }])
                
Mixer.create([{ name: 'Mint leaves' },
              { name: 'Simple syrup' },
              { name: 'Lime juice' },
              { name: 'Club soda' },
              { name: 'Ginger beer' }])
              
Drink.create([{ name: 'Mojito', alcoholPerVolume: 15.5, flavor: :Sweet, 
                description: "In a shaker, lightly muddle the mint.
 Add the rum, simple syrup and lime juice, fill with ice and strain.
 Pour into a highball glass.
 Top with the club soda.
 Garnish with a mint sprig.", liquor_ids: [1], mixer_ids: [1, 2, 3]},
                { name: 'Moscow Mule', alcoholPerVolume: 25.5, flavor: :Sour,
                  description: "Add all of the ingredients intoto a Moscow Mule mug (or highball glass) over ice.
 Garnish with a lime wheel.", liquor_ids: [2], mixer_ids: [3, 5]}]) 