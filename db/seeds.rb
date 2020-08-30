puts "Creating User"
User.create!(email: "alisa.siegmund@gmail.com", password: "123456", password_confirmation: "123456")
puts "Created 1 User..."



puts "Creating Issues"

description = 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et'
title = ['Loneliness', 'Boredom', 'Life', 'Serendipity']

Issue.create!( title: title[0], short_description: description)
Issue.create!( title: title[1], short_description: description)
Issue.create!( title: title[2], short_description: description)
Issue.create!( title: title[3], short_description: description)

puts "Created 4 Issues #{Issue.all}"

