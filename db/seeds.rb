require 'open-uri'

puts "step1 - Cleaning the database"
Pet.destroy_all

puts "step3 - Creating Pets"

pet_1_picture = URI.open('https://www.humanesociety.org/sites/default/files/styles/1240x698/public/2019/02/dog-451643.jpg?h=bf654dbc&itok=MQGvBmuo')
pet1 = Pet.new(name: "Dillan", location: "Amsterdam", breed: "Dog", description: "First dog", price: 150, user_id: 5)
pet1.photo.attach(io: pet_1_picture, filename: 'pet1.png', content_type: 'image/png')
pet1.save!

pet_2_picture = URI.open('https://dynaimage.cdn.cnn.com/cnn/c_fill,g_auto,w_1200,h_675,ar_16:9/https%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F201030094143-stock-rhodesian-ridgeback.jpg')
pet2 = Pet.new(name: "Bob", location: "Berlin", breed: "Dog", description: "Happy dog", price: 150, user_id: 6)
pet2.photo.attach(io: pet_2_picture, filename: 'pet2.png', content_type: 'image/png')
pet2.save!

pet_3_picture = URI.open('https://www.humanesociety.org/sites/default/files/styles/768x326/public/2020-07/dog-518805.jpg?h=e22bf01e&itok=uE4KGkuj')
pet3 = Pet.new(name: "Sally", location: "London", breed: "Dog", description: "Sad dog", price: 150, user_id: 7)
pet3.photo.attach(io: pet_3_picture, filename: 'pet3.png', content_type: 'image/png')
pet3.save!

pet_4_picture = URI.open('https://www.helpguide.org/wp-content/uploads/dog-resting-chin-on-persons-hand-768.jpg')
pet4 = Pet.new(name: "Vince", location: "Paris", breed: "Dog", description: "Annoying dog", price: 150, user_id: 8)
pet4.photo.attach(io: pet_4_picture, filename: 'pet4.png', content_type: 'image/png')
pet4.save!