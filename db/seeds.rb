require 'open-uri'

User.delete_all
Group.delete_all
Challenge.delete_all
Comment.delete_all
Participation.delete_all
Membership.delete_all

# Users with photos

alana = User.create!(username: 'alana', password: 'password', email: 'alana@mail.com')
alana.image = open('https://github.com/tomorrow-lauren/lauren-doodle/blob/master/jpg/alana.jpg?raw=true')
alana.save

marshall = User.create!(username: 'marshall', password: 'password', email: 'marshall@mail.com')
marshall.image = open('https://github.com/tomorrow-lauren/lauren-doodle/blob/master/jpg/marshall.jpg?raw=true')
marshall.save

mike = User.create!(username: 'mike', password: 'password', email: 'mike@mail.com')
mike.image = open('https://github.com/tomorrow-lauren/lauren-doodle/blob/master/jpg/mike.jpg?raw=true')
mike.save

lauren = User.create!(username: 'lauren', password: 'password', email: 'lauren@mail.com')
lauren.image = open('https://s-media-cache-ak0.pinimg.com/564x/e9/d7/72/e9d7723b0410dcc64c0f6a0e7968e822.jpg')
lauren.save

# Users without photos
mom = User.create!(username: 'mom', password: 'password', email: 'mom@mail.com')
kim = User.create!(username: 'kim', password: 'password', email: 'kim@mail.com')
dad = User.create!(username: 'dad', password: 'password', email: 'dad@mail.com')
jon = User.create!(username: 'jon', password: 'password', email: 'jon@mail.com')
dan = User.create!(username: 'dan', password: 'password', email: 'dan@mail.com')
sabri = User.create!(username: 'sabri', password: 'password', email: 'sabri@mail.com')
tiffany = User.create!(username: 'tiffany', password: 'password', email: 'tiffany@mail.com')


group = marshall.created_groups.create(name: 'Team Grouvie')
group2 = mike.created_groups.create(name: 'Squirrels')
group3 = alana.created_groups.create(name: 'Speed Racers')
group4 = marshall.created_groups.create(name: 'HS Friends')
group5 = lauren.created_groups.create(name: 'La Familia')
group6 = alana.created_groups.create(name: 'College')

group.members << [alana, marshall, mike, lauren]
group2.members << [alana, marshall, lauren, mike, dan, sabri, tiffany]
group3.members << [marshall, alana, lauren, sabri, tiffany]
group4.members << [alana, marshall, mike, lauren, jon]
group5.members << [alana, marshall, mike, jon, mom, dad]
group6.members << [mike, alana, lauren, dan, tiffany]

challenge = group.challenges.create!(name: 'Build an App', description: 'Create an app using Rails and React Native to help its users reach goals / take selfies', start_date: Date.new(2016, 3, 10), end_date: Date.new(2016, 03, 18))
challenge2 = group.challenges.create!(name: 'Learn React Native', description: 'Dive into the docs and learn all there is to know!', start_date: Date.new(2016, 3, 10), end_date: Date.new(2016, 03, 18))
challenge3 = group.challenges.create!(name: 'Create seed data', description: 'Make data to help test your new app.', start_date: Date.new(2016, 3, 10), end_date: Date.new(2016, 03, 18))
challenge4 = group.challenges.create!(name: 'Demo App!', description: 'Show your creation to the world.', start_date: Date.new(2016, 3, 10), end_date: Date.new(2016, 03, 18))

challenge5 = group2.challenges.create!(name: 'Graduate', description: 'But stay in touch.', start_date: Date.new(2016, 3, 10), end_date: Date.new(2016, 03, 18))
challenge6 = group2.challenges.create!(name: 'Do a donut crawl', description: 'Heart donuts', start_date: Date.new(2016, 3, 10), end_date: Date.new(2016, 03, 18))
challenge7 = group2.challenges.create!(name: 'Perfect the fast-to-slow clap', description: 'And then add to resume skills.', start_date: Date.new(2016, 3, 10), end_date: Date.new(2016, 03, 18))
challenge8 = group2.challenges.create!(name: 'Vacuum the ROR', description: 'Vacuum the entire room and the chairs', start_date: Date.new(2016, 3, 10), end_date: Date.new(2016, 03, 18))

challenge9 = group3.challenges.create!(name: 'Run 3 times this week', description: 'Take a run of 20+ minutes 3 times this week', start_date: Date.new(2016, 3, 10), end_date: Date.new(2016, 03, 18))
challenge10 = group3.challenges.create!(name: 'Swim 100 laps in the pool', description: 'Get fit', start_date: Date.new(2016, 3, 10), end_date: Date.new(2016, 03, 15))
challenge11 = group3.challenges.create!(name: 'Get 100,000 steps on pedometer this week', description: 'Walk a lot', start_date: Date.new(2016, 3, 10), end_date: Date.new(2016, 03, 15))

challenge12 = group4.challenges.create!(name: 'Book tickets to France', description: 'Prices will go up', start_date: Date.new(2016, 3, 10), end_date: Date.new(2016, 03, 18))
challenge13 = group4.challenges.create!(name: 'Reserve Pat Green tickets', description: 'Theyre going to sell out', start_date: Date.new(2016, 3, 10), end_date: Date.new(2016, 03, 18))
challenge14 = group4.challenges.create!(name: 'Read the 2nd chapter of that book', description: 'And then add to resume skills.', start_date: Date.new(2016, 3, 10), end_date: Date.new(2016, 03, 18))
challenge15 = group4.challenges.create!(name: 'Fill out common app', description: 'Its almost due', start_date: Date.new(2016, 3, 10), end_date: Date.new(2016, 03, 18))

challenge16 = group5.challenges.create!(name: 'Get your flu shot', description: 'It actually matters.', start_date: Date.new(2016, 3, 10), end_date: Date.new(2016, 03, 18))
challenge17 = group5.challenges.create!(name: 'Call Grandma this week', description: 'She would really appreciate it', start_date: Date.new(2016, 3, 10), end_date: Date.new(2016, 03, 18))
challenge18 = group5.challenges.create!(name: 'Share a funny picture this week!', description: 'Stay in touch yall', start_date: Date.new(2016, 3, 10), end_date: Date.new(2016, 03, 18))
challenge19 = group5.challenges.create!(name: 'Clean up the bathroom', description: 'It is gross.', start_date: Date.new(2016, 3, 10), end_date: Date.new(2016, 03, 18))

challenge20 = group6.challenges.create!(name: 'Get your flu shot', description: 'It actually matters.', start_date: Date.new(2016, 3, 10), end_date: Date.new(2016, 03, 18))
challenge21 = group6.challenges.create!(name: 'Call Grandma this week', description: 'She would really appreciate it', start_date: Date.new(2016, 3, 10), end_date: Date.new(2016, 03, 18))
challenge22 = group6.challenges.create!(name: 'Share a funny picture this week!', description: 'Stay in touch yall', start_date: Date.new(2016, 3, 10), end_date: Date.new(2016, 03, 18))
challenge23 = group6.challenges.create!(name: 'Clean up the bathroom', description: 'It is gross.', start_date: Date.new(2016, 3, 10), end_date: Date.new(2016, 03, 18))


challenge.participants << [alana, marshall, mike, lauren]
challenge2.participants << [alana, marshall, mike, lauren]
challenge3.participants << [lauren, alana, mike, marshall]
challenge4.participants << [alana, mike, marshall, lauren]

challenge5.participants << [alana, mike, marshall, dan, sabri, tiffany]
challenge6.participants << [lauren, dan, sabri, tiffany, mike]
challenge7.participants << [marshall, alana, lauren, sabri, tiffany]
challenge8.participants << [alana, marshall, lauren, tiffany]

challenge9.participants << [alana, marshall, lauren, sabri]
challenge10.participants << [lauren, alana, marshall, tiffany]
challenge11.participants << [alana, tiffany, sabri]

challenge12.participants << [alana, mike]
challenge13.participants << [marshall, lauren, jon]
challenge14.participants << [marshall, alana, lauren]
challenge15.participants << [alana, marshall, mike, lauren]

challenge16.participants << [alana, marshall, mom, dad]
challenge17.participants << [mom, dad, marshall, mike, jon]
challenge18.participants << [alana, mike, mom]
challenge19.participants << [dad, mike, marshall]

challenge20.participants << [mike, alana, lauren]
challenge21.participants << [dan, alana, lauren]
challenge22.participants << [tiffany, lauren]
challenge23.participants << [mike, alana, lauren]

alana.comments.create!(group: group, content: 'these docs are so confusing!')
mike.comments.create!(group: group, content: "Let's do this!")
marshall.comments.create!(group: group, content: "Is it friday yet?")
lauren.comments.create!(group: group, content: "Errors amiright?")

mike.comments.create!(group: group2, content: "Guys the ROR really needs to be vacuumed")
tiffany.comments.create!(group: group2, content: "Then vacuum it")

alana.comments.create!(group: group3, content: "Already ran twice. Come on guys")
marshall.comments.create!(group: group3, content: "Swimming tomorrow")

alana.comments.create!(group: group4, content: "Seriously the tickets will sell out just buy them")
marshall.comments.create!(group: group4, content: "Can you just order 2 for me?")
lauren.comments.create!(group: group4, content: "Stop being so lazy marshall")

mom.comments.create!(group: group5, content: "Send pictures please!")
mom.comments.create!(group: group5, content: "I don't want to spoil this movie but you have to see it. It was so good. Whatever you think will happen doesn't actually happen. Don't worry that won't spoil it. But it's really pretty sad because everyone dies at the end. Oh shoot! Sorry!")
jon.comments.create!(group: group5, content: "Mom!")

mike.comments.create!(group: group6, content: "Sup")
alana.comments.create!(group: group6, content: "Yo")


clip_art = ['http://worldartsme.com/images/fall-squirrel-clipart-1.jpg', 'http://clipartbold.com/wp-content/uploads/2016/02/Cute-squirrel-cartoon-clipart-image-5.png', 'http://clipartion.com/wp-content/uploads/2015/11/running-squirrel-clipart.png', 'http://images.clipartpanda.com/squirrel-clipart-cartoon_squirrel_with_an_acorn_nut_0071-0908-3116-2318_SMU.jpg', 'http://comps.canstockphoto.com/can-stock-photo_csp13648213.jpg', 'http://worldartsme.com/images/fall-squirrel-clipart-1.jpg', 'http://clipartbold.com/wp-content/uploads/2016/02/Cute-squirrel-cartoon-clipart-image-5.png', 'http://clipartion.com/wp-content/uploads/2015/11/running-squirrel-clipart.png', 'http://images.clipartpanda.com/squirrel-clipart-cartoon_squirrel_with_an_acorn_nut_0071-0908-3116-2318_SMU.jpg', 'http://comps.canstockphoto.com/can-stock-photo_csp13648213.jpg']

completed_challenges = Participation.all.sample(10)

completed_challenges.each_with_index do |participation, index|
  participation.completed = true
  participation.image = open(clip_art[index])
  participation.save
end
