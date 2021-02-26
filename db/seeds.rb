require 'open-uri'

puts "step1 - Cleaning the database"
Booking.destroy_all
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
pet1 = Pet.new(name: "Dillan", location: "Brabantse Bellefleur", breed: "Staffordshire Terrier", description: "Dillan is a lovely 3 year old Staffordshire Terrier and will be the perfect companion. He is friendly, easy-going and particularly enjoys evening walks. Kids-friendly companion.", price: 15, user_id: user1.id)
pet1.photo.attach(io: pet_1_picture, filename: 'pet1.png', content_type: 'image/png')
pet1.save!

pet_2_picture = URI.open('https://dynaimage.cdn.cnn.com/cnn/c_fill,g_auto,w_1200,h_675,ar_16:9/https%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F201030094143-stock-rhodesian-ridgeback.jpg')
pet2 = Pet.new(name: "Bob", location: "De Bijvank", breed: "Rhodesian Ridgeback", description: "Bob is a 2 year old Rhodesian Ridgeback who will follow you everywhere! Beware, Bob doesn’t like solitude, so you can be sure you will have a strong presence.", price: 15, user_id: user2.id)
pet2.photo.attach(io: pet_2_picture, filename: 'pet2.png', content_type: 'image/png')
pet2.save!

pet_3_picture = URI.open('https://www.humanesociety.org/sites/default/files/styles/768x326/public/2020-07/dog-518805.jpg?h=e22bf01e&itok=uE4KGkuj')
pet3 = Pet.new(name: "Sally", location: "Rendierweg", breed: "Terrier", description: "Sally is the sweetest Terrier there is. Sally loves outdoors so if you have a garden you will enjoy seeing her sniffing flowers and wander around.", price: 15, user_id: user3.id)
pet3.photo.attach(io: pet_3_picture, filename: 'pet3.png', content_type: 'image/png')
pet3.save!

pet_4_picture = URI.open('https://www.helpguide.org/wp-content/uploads/dog-resting-chin-on-persons-hand-768.jpg')
pet4 = Pet.new(name: "Vince", location: "Herenstraat", breed: "Griffon Korthals", description: "Vince is a cute and peaceful Griffon Korthals. He is very friendly and caring, so you can be sure he will look after you! Vince loves everyone and is super easy with kids.", price: 15, user_id: user4.id)
pet4.photo.attach(io: pet_4_picture, filename: 'pet4.png', content_type: 'image/png')
pet4.save!

pet_5_picture = URI.open('https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/09231807/Miniature-Bull-Terrier-standing-outdoors.jpg')
pet5 = Pet.new(name: "Bobby", location: "Tweeloo", breed: "English Bull Terrier", description: "Bobby the English Bull Terrier will have you melt. He will be the sweetest and friendliest fluffy friend. He likes everyone!", price: 15, user_id: user5.id)
pet5.photo.attach(io: pet_5_picture, filename: 'pet5.png', content_type: 'image/png')
pet5.save!

pet_6_picture = URI.open('https://thumbs-prod.si-cdn.com/omtxDUbVWafbhOTsDFJnOW3gFiw=/fit-in/1600x0/filters:focal(2135x711:2136x712)/https://public-media.si-cdn.com/filer/77/8b/778bb007-831c-4c81-a475-05487cd7b53b/adult-brown-labrador-retriever-1010121_3.jpg')
pet6 = Pet.new(name: "Johnny", location: "Spaarnelaan", breed: "Labrador", description: "If you are the sportive type, then Johnny is the right fluffy friend for you. He will delighted to accompany you on your running sessions.", price: 15, user_id: user6.id)
pet6.photo.attach(io: pet_6_picture, filename: 'pet6.png', content_type: 'image/png')
pet6.save!

pet_7_picture = URI.open('https://dogtime.com/assets/uploads/gallery/german-shepherd-dog-breed-pictures/standing-7.jpg')
pet7 = Pet.new(name: "Tim", location: "Ansfriduslaan", breed: "German Shepherd", description: "Tim is the German Shepherd everyone dreams of. He will bring light to your days and you will probably never want to give him back!", price: 15, user_id: user7.id)
pet7.photo.attach(io: pet_7_picture, filename: 'pet7.png', content_type: 'image/png')
pet7.save!

pet_8_picture = URI.open('https://www.petbarn.com.au/petspot/app/uploads/2019/03/shutterstock_125089496.jpg')
pet8 = Pet.new(name: "Augustus", location: "Pastoor Attendorenstraat ", breed: "Parrot", description: "Augustus the perrot is a special kind that will surprise you more every day you have him with you. He's definitely the talkative type so be prepared to have long conversations!", price: 15, user_id: user8.id)
pet8.photo.attach(io: pet_8_picture, filename: 'pet8.png', content_type: 'image/png')
pet8.save!

pet_9_picture = URI.open('https://www.thesprucepets.com/thmb/BKNJkoyr-qyvfaYVRVCuEHNmOXU=/1155x1155/smart/filters:no_upscale()/Stocksy_txp14acff329Kw100_Medium_1360769-5aec7baefa6bcc00373c6cb7.jpg')
pet9 = Pet.new(name: "Fuzzy", location: "Renswoudsestraatweg", breed: "Rabbit", description: "Fuzzy is a friendly 4 month old rabbit who enjoys walking around in the house, so don't hesitate to let him out of his cage! He will be great with your small kids.", price: 15, user_id: user9.id)
pet9.photo.attach(io: pet_9_picture, filename: 'pet9.png', content_type: 'image/png')
pet9.save!

pet_10_picture = URI.open('https://www.helpguide.org/wp-content/uploads/dog-resting-chin-on-persons-hand-768.jpg')
pet10 = Pet.new(name: "Coco", location: "Zijlweg", breed: "Dog", description: "Coco's presence is always warm as he always close next to you. With Coco you will feel protected. She will be the perfect company for a few days!", price: 15, user_id: user10.id)
pet10.photo.attach(io: pet_10_picture, filename: 'pet10.png', content_type: 'image/png')
pet10.save!

puts "creating bookings..."
booking1 = Booking.new(start_date: Date.new(2021,03,03), end_date: Date.new(2021,03,05), user_id: user1.id, pet_id: pet3.id)
booking1.save!
booking2 = Booking.new(start_date: Date.new(2021,03,03), end_date: Date.new(2021,03,06), user_id: user2.id, pet_id: pet1.id)
booking2.save!
