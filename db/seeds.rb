require 'open-uri'

puts "step1 - Cleaning the database"
Pet.destroy_all
User.destroy_all

user1 = User.create!(email: "anthony@gmail.com", password: "123456")
user2 = User.create!(email: "billy@gmail.com", password: "123456")
user3 = User.create!(email: "andy@gmail.com", password: "123456")
user4 = User.create!(email: "james@gmail.com", password: "123456")
user5 = User.create!(email: "harriet@gmail.com", password: "123456")
user6 = User.create!(email: "marley@gmail.com", password: "123456")
user7 = User.create!(email: "ben@gmail.com", password: "123456")
user8 = User.create!(email: "dillan@gmail.com", password: "123456")
user9 = User.create!(email: "ozzy@gmail.com", password: "123456")
user10 = User.create!(email: "sarah@gmail.com", password: "123456")


puts "step3 - Creating Pets"

pet_1_picture = URI.open('https://www.humanesociety.org/sites/default/files/styles/1240x698/public/2019/02/dog-451643.jpg?h=bf654dbc&itok=MQGvBmuo')
pet1 = Pet.new(name: "Dillan", location: "Amsterdam", breed: "Dog", description: "First dog", price: 150, user_id: user1.id)
pet1.photo.attach(io: pet_1_picture, filename: 'pet1.png', content_type: 'image/png')
pet1.save!

pet_2_picture = URI.open('https://dynaimage.cdn.cnn.com/cnn/c_fill,g_auto,w_1200,h_675,ar_16:9/https%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F201030094143-stock-rhodesian-ridgeback.jpg')
pet2 = Pet.new(name: "Bob", location: "Berlin", breed: "Dog", description: "Happy dog", price: 150, user_id: user2.id)
pet2.photo.attach(io: pet_2_picture, filename: 'pet2.png', content_type: 'image/png')
pet2.save!

pet_3_picture = URI.open('https://www.humanesociety.org/sites/default/files/styles/768x326/public/2020-07/dog-518805.jpg?h=e22bf01e&itok=uE4KGkuj')
pet3 = Pet.new(name: "Sally", location: "London", breed: "Dog", description: "Sad dog", price: 150, user_id: user3.id)
pet3.photo.attach(io: pet_3_picture, filename: 'pet3.png', content_type: 'image/png')
pet3.save!

pet_4_picture = URI.open('https://www.helpguide.org/wp-content/uploads/dog-resting-chin-on-persons-hand-768.jpg')
pet4 = Pet.new(name: "Vince", location: "Paris", breed: "Dog", description: "Annoying dog", price: 150, user_id: user4.id)
pet4.photo.attach(io: pet_4_picture, filename: 'pet4.png', content_type: 'image/png')
pet4.save!

pet_5_picture = URI.open('https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/09231807/Miniature-Bull-Terrier-standing-outdoors.jpg')
pet5 = Pet.new(name: "Bob", location: "London", breed: "English Bull Terrier", description: "A lovely companion", price: 150, user_id: user5.id)
pet5.photo.attach(io: pet_5_picture, filename: 'pet5.png', content_type: 'image/png')
pet5.save!

pet_6_picture = URI.open('https://thumbs-prod.si-cdn.com/omtxDUbVWafbhOTsDFJnOW3gFiw=/fit-in/1600x0/filters:focal(2135x711:2136x712)/https://public-media.si-cdn.com/filer/77/8b/778bb007-831c-4c81-a475-05487cd7b53b/adult-brown-labrador-retriever-1010121_3.jpg')
pet6 = Pet.new(name: "Johnny", location: "Scotland", breed: "Labrador", description: "A great sporting dog", price: 150, user_id: user6.id)
pet6.photo.attach(io: pet_6_picture, filename: 'pet6.png', content_type: 'image/png')
pet6.save!

pet_7_picture = URI.open('https://dogtime.com/assets/uploads/gallery/german-shepherd-dog-breed-pictures/standing-7.jpg')
pet7 = Pet.new(name: "Vince", location: "Wales", breed: "German Shepherd", description: "Will keep you save", price: 150, user_id: user7.id)
pet7.photo.attach(io: pet_7_picture, filename: 'pet7.png', content_type: 'image/png')
pet7.save!

pet_8_picture = URI.open('https://www.petbarn.com.au/petspot/app/uploads/2019/03/shutterstock_125089496.jpg')
pet8 = Pet.new(name: "Augustus", location: "Amsterdam", breed: "Parrot", description: "Not for the faint hearted", price: 150, user_id: user8.id)
pet8.photo.attach(io: pet_8_picture, filename: 'pet8.png', content_type: 'image/png')
pet8.save!

pet_9_picture = URI.open('https://www.thesprucepets.com/thmb/BKNJkoyr-qyvfaYVRVCuEHNmOXU=/1155x1155/smart/filters:no_upscale()/Stocksy_txp14acff329Kw100_Medium_1360769-5aec7baefa6bcc00373c6cb7.jpg')
pet9 = Pet.new(name: "Fuzzy", location: "Berlin", breed: "Rabbit", description: "Keep you entertained", price: 150, user_id: user9.id)
pet9.photo.attach(io: pet_9_picture, filename: 'pet9.png', content_type: 'image/png')
pet9.save!

pet_10_picture = URI.open('https://www.helpguide.org/wp-content/uploads/dog-resting-chin-on-persons-hand-768.jpg')
pet10 = Pet.new(name: "Vince", location: "Paris", breed: "Dog", description: "Annoying dog", price: 150, user_id: user10.id)
pet10.photo.attach(io: pet_10_picture, filename: 'pet10.png', content_type: 'image/png')
pet10.save!