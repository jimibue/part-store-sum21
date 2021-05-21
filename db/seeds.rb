# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#I want to create many engines and for each engine create many parts
Engine.destroy_all

# create an Engine
# loop and create many engines

3.times do 
    e = Engine.create(name:Faker::Music.genre, horsepower:rand(1000), electric: rand(2).odd?)
    5.times do
        e.parts.create(name:Faker::Music.instrument, price:rand(1000), in_stock:rand(2).odd?, quantity:rand(20))
    end
end

