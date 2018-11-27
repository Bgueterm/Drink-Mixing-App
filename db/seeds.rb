
<<<<<<< HEAD
Liquor.create([{ name: 'Rum' },
                { name: 'Vodka' }])
                
Mixer.create([{ name: 'Mint leaves' },
=======

Liquor.create([{ name: 'Rum' },
                { name: 'Vodka' }])
                
Mixer.create!([{ name: 'Mint leaves' },
>>>>>>> SarahBranch
              { name: 'Simple syrup' },
              { name: 'Lime juice' },
              { name: 'Club soda' },
              { name: 'Ginger beer' }])
              
<<<<<<< HEAD
Drink.create([{ name: 'Mojito', alcoholPerVolume: 15.5, flavor: :Sweet, 
                description: "In a shaker, lightly muddle the mint.

Add the rum, simple syrup and lime juice, fill with ice and strain.

Pour into a highball glass.

Top with the club soda.

Garnish with a mint sprig.", liquor_ids: [1], mixer_ids: [1, 2, 3]},
                { name: 'Moscow Mule', alcoholPerVolume: 25.5, flavor: :Sour,
                  description: "Add all of the ingredients intoto a Moscow Mule mug (or highball glass) over ice.

Garnish with a lime wheel.", liquor_ids: [2], mixer_ids: [3, 5]}])
=======
Drink.create!([{ name: 'Mojito', alcoholPerVolume: 15.5, flavor: :SWEET, 
                description: "In a shaker, lightly muddle the mint.
 Add the rum, simple syrup and lime juice, fill with ice and strain.
 Pour into a highball glass.
 Top with the club soda.
 Garnish with a mint sprig.", liquor_ids: [1], mixer_ids: [1, 2, 3]},
                { name: 'Moscow Mule', alcoholPerVolume: 25.5, flavor: :SOUR,
                  description: "Add all of the ingredients intoto a Moscow Mule mug (or highball glass) over ice.
 Garnish with a lime wheel.", liquor_ids: [2], mixer_ids: [3, 5]}]) 
 
 p "Created #{Drink.count} drinks"
>>>>>>> SarahBranch
