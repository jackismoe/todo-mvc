# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

shop = List.create(name: "Shopping List")
gift = List.create(name: "Gift List")
read = List.create(name: "Reading List")

milk = shop.items.create(description: "Milk")
eggs = shop.items.create(description: "Eggs")
cookies = shop.items.create(description: "Cookies")

ring = gift.items.create(description: 'Ring')
neck = gift.items.create(description: 'Necklace')
shoe = gift.items.create(description: 'Shoes')

mast = read.items.create(description: "Mastery")
selfish = read.items.create(description: "The Selfish Gene")
sun = read.items.create(description: "The Sun Also Rises")

