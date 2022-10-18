# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@straws = Crew.create!(name: 'Straw Hat Pirates', ranking: 2, ship: 'Thousand Sunny', worst_generation: true)
@blackbeards = Crew.create!(name: 'Blackbeard Pirates', ranking: 4, ship: 'Saber of Xebec', worst_generation: false)
@rogers = Crew.create!(name: 'Roger Pirates', ranking: 1, ship: 'Oro Jackson', worst_generation: false)


@luffy = Character.create!(name: 'Monkey D. Luffy', age: 19, devil_fruit_eater: true, epithet: 'Straw Hat', bounty: 30_000_000, crew_id: @straws.id)
@chopper = Character.create!(name: 'Tony Tony Chopper', age: 17, devil_fruit_eater: true, epithet: 'Cotton Candy Lover', bounty: 10, crew_id: @straws.id)
@zoro = Character.create!(name: 'Roronoa Zoro', age: 21, devil_fruit_eater: false, epithet: 'Pirate Hunter', bounty: 11_110_000, crew_id: @straws.id)
@nami = Character.create!(name: 'Nami', age: 20, devil_fruit_eater: false, epithet: 'Cat Burglas', bounty: 366_000, crew_id: @straws.id)
@sanji = Character.create!(name: 'Sanji', age: 21, devil_fruit_eater: false, epithet: 'Black Leg', bounty: 98_000, crew_id: @straws.id)
@nico = Character.create!(name: 'Nico Robin', age: 30, devil_fruit_eater: true, epithet: 'Devil Child', bounty: 900_000, crew_id: @straws.id)

@roger = Character.create!(name: 'Gol D. Roger', age: 53, devil_fruit_eater: false, epithet: 'Pirate King', bounty: 1_000_000, crew_id: @rogers.id)
@silver = Character.create!(name: 'Silvers Rayleigh', age: 78, devil_fruit_eater: false, epithet: 'Right Hand of PK', bounty: 0, crew_id: @rogers.id)
@oden = Character.create!(name: 'Kozuko Oden', age: 39, devil_fruit_eater: false, epithet: 'Idiot Lord', bounty: 3_000, crew_id: @rogers.id)

@shiryu = Character.create!(name: 'Shiryu', age: 44, devil_fruit_eater: true, epithet: 'Shiryu of the Rain', bounty: 45_000, crew_id: @blackbeards.id)
@teach = Character.create!(name: 'Marshall D. Teach', age: 40, devil_fruit_eater: true, epithet: 'Blackbeard', bounty: 999_999, crew_id: @blackbeards.id)