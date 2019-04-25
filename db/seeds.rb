# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :email => 'michael@ga.co', :password => 'chicken'
u2 = User.create :email => 'yanni@ga.co', :password => 'chicken', :admin => true


Category.destroy_all
c1 = Category.create :title => 'Chinese'
c2 = Category.create :title => 'Australian'
c3 = Category.create :title => "Indian"
c4 = Category.create :title => 'Unknown'

Material.destroy_all
m1 = Material.create :name => 'Chicken'
m2 = Material.create :name => 'Beef'
m3 = Material.create :name => 'Lamb'
m4 = Material.create :name => 'Pork'

Sauce.destroy_all
s1 = Sauce.create :name => 'Soy Sauce'
s2 = Sauce.create :name => 'Green Curry'
s3 = Sauce.create :name => 'Yellow Curry'
s4 = Sauce.create :name => 'Spicy'

Cooking.destroy_all
g1 = Cooking.create :title => 'Curry Chicken', :image => 'https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2016/03/chicken-madras.jpg', :step => 'Put 1 roughly chopped large onion, 3 tbsp mild curry paste, a 400g can chopped tomatoes, 2 tsp vegetable bouillon powder, 1 tbsp finely chopped ginger and 1 chopped yellow pepper into the slow cooker pot with a third of a can of water and stir well.

Add 2 skinless chicken legs, fat removed, and push them under all the other ingredients so that they are completely submerged. Cover with the lid and chill in the fridge overnight.

The next day, cook on Low for 6 hrs until the chicken and vegetables are really tender.

Stir in the the chopped leaves of 30g coriander just before serving over brown rice.'

g2 = Cooking.create :title => 'Chinese Chicken Broth', :image => 'https://s3.amazonaws.com/finecooking.s3.tauntonclud.com/app/uploads/2017/04/18165955/051125063-01-chinese-chicken-broth-recipe-main.jpg', :step => 'In a 10-quart stockpot, bring 2 quarts of water to a boil. Add the quartered chicken, giblets, and chicken wings; return to a boil. Boil for 2 minutes to bring any impurities to the surface. Pour off the water and run cold water into the pot to rinse the chicken; pour off the water again.
Add 4 quarts of fresh cold water along with the onions, cilantro, ginger, scallions, garlic, and peppercorns. Cover and bring to a boil. Turn the heat down, partially cover, and simmer for 3 hours, skimming off foam as necessary.
Strain over a large bowl or pot, discarding the solids. Season to taste with salt. Let cool before using or storing.'

g3 = Cooking.create :title => 'Chinese Chicken Broth', :image => 'https://s3.amazonaws.com/finecooking.s3.tauntonclud.com/app/uploads/2017/04/18165955/051125063-01-chinese-chicken-broth-recipe-main.jpg', :step => 'In a 10-quart stockpot, bring 2 quarts of water to a boil. Add the quartered chicken, giblets, and chicken wings; return to a boil. Boil for 2 minutes to bring any impurities to the surface. Pour off the water and run cold water into the pot to rinse the chicken; pour off the water again.
Add 4 quarts of fresh cold water along with the onions, cilantro, ginger, scallions, garlic, and peppercorns. Cover and bring to a boil. Turn the heat down, partially cover, and simmer for 3 hours, skimming off foam as necessary.
Strain over a large bowl or pot, discarding the solids. Season to taste with salt. Let cool before using or storing.'

g4 = Cooking.create :title => 'Chinese Chicken Broth', :image => 'https://s3.amazonaws.com/finecooking.s3.tauntonclud.com/app/uploads/2017/04/18165955/051125063-01-chinese-chicken-broth-recipe-main.jpg', :step => 'In a 10-quart stockpot, bring 2 quarts of water to a boil. Add the quartered chicken, giblets, and chicken wings; return to a boil. Boil for 2 minutes to bring any impurities to the surface. Pour off the water and run cold water into the pot to rinse the chicken; pour off the water again.
Add 4 quarts of fresh cold water along with the onions, cilantro, ginger, scallions, garlic, and peppercorns. Cover and bring to a boil. Turn the heat down, partially cover, and simmer for 3 hours, skimming off foam as necessary.
Strain over a large bowl or pot, discarding the solids. Season to taste with salt. Let cool before using or storing.'

g5 = Cooking.create :title => 'Chinese Chicken Broth', :image => 'https://s3.amazonaws.com/finecooking.s3.tauntonclud.com/app/uploads/2017/04/18165955/051125063-01-chinese-chicken-broth-recipe-main.jpg', :step => 'In a 10-quart stockpot, bring 2 quarts of water to a boil. Add the quartered chicken, giblets, and chicken wings; return to a boil. Boil for 2 minutes to bring any impurities to the surface. Pour off the water and run cold water into the pot to rinse the chicken; pour off the water again.
Add 4 quarts of fresh cold water along with the onions, cilantro, ginger, scallions, garlic, and peppercorns. Cover and bring to a boil. Turn the heat down, partially cover, and simmer for 3 hours, skimming off foam as necessary.
Strain over a large bowl or pot, discarding the solids. Season to taste with salt. Let cool before using or storing.'

g6 = Cooking.create :title => 'Chinese Chicken Broth', :image => 'https://s3.amazonaws.com/finecooking.s3.tauntonclud.com/app/uploads/2017/04/18165955/051125063-01-chinese-chicken-broth-recipe-main.jpg', :step => 'In a 10-quart stockpot, bring 2 quarts of water to a boil. Add the quartered chicken, giblets, and chicken wings; return to a boil. Boil for 2 minutes to bring any impurities to the surface. Pour off the water and run cold water into the pot to rinse the chicken; pour off the water again.
Add 4 quarts of fresh cold water along with the onions, cilantro, ginger, scallions, garlic, and peppercorns. Cover and bring to a boil. Turn the heat down, partially cover, and simmer for 3 hours, skimming off foam as necessary.
Strain over a large bowl or pot, discarding the solids. Season to taste with salt. Let cool before using or storing.'

#category and cookings
c1.cookings << g1
c2.cookings << g2

#cooking and Materials
g1.materials << m1
g2.materials << m1
m1.cookings << g1 << g2

#cooking and sauces
g1.sauces << s1 << s2

#cooking and user
u1.cookings << g1 << g2
