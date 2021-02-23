# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pet_1 = Pet.new({
    name: "Maisey",
    description: "White cat",
    location: "Amsterdam",
    breed: "Siamese",
    price: 5,
    user_id: 1
}).save

pet_2 = Pet.new({
    name: "Dillan",
    description: "A very unfriendly dog",
    location: "Amsterdam",
    breed: "German Shepherd",
    price: 7.5,
    user_id: 1
}).save

pet_3 = Pet.new({
    name: "Squawk",
    description: "Friendly parrot",
    location: "Amsterdam",
    breed: "Green parrot",
    price: 2,
    user_id: 1
}).save