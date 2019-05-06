# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Room.create(number: '100', daily_rate: 50000)
Room.create(number: '105', daily_rate: 55000)
Room.create(number: '200', daily_rate: 57000)
Room.create(number: '205', daily_rate: 58000)
Room.create(number: '300', daily_rate: 60000)
Room.create(number: '305', daily_rate: 75000)
Room.create(number: '400', daily_rate: 90000)

User.create(first_name: 'Alvaro', last_name: 'Alvarez', loyalty_member_tier: 'bronze')
User.create(first_name: 'Grecia', last_name: 'Contreras', loyalty_member_tier: 'silver')
User.create(first_name: 'Lady', last_name: 'Bernal', loyalty_member_tier: 'gold')

