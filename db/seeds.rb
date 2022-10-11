# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@crew = Crew.create!(name: 'Straw Hat Pirates', ranking: 1, ship: 'Thousand Sunny', worst_generation: true)
@crew_2 = Crew.create!(name: 'Roger Pirates', ranking: 2, ship: 'Oro Jackson', worst_generation: false)

@luffy = Character.create!(name: 'Monkey D. Luffy', age: 19, devil_fruit_eater: true, epithet: 'Straw Hat', bounty: 30_000_000, crew_id: @crew.id)
@chopper = Character.create!(name: 'Tony Tony Chopper', age: 17, devil_fruit_eater: true, epithet: 'Cotton Candy Lover', bounty: 10, crew_id: @crew.id)
@zoro = Character.create!(name: 'Roronoa Zoro', age: 21, devil_fruit_eater: false, epithet: 'Pirate Hunter', bounty: 11_110_000, crew_id: @crew.id)
  
@silver = Character.create!(name: 'Silvers Rayleigh', age: 78, devil_fruit_eater: false, epithet: 'Right Hand of PK', bounty: 0, crew_id: @crew_2.id)