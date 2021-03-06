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
mike.image = open('http://s3.amazonaws.com/grouvie/users/images/000/000/003/original/data?1458248686')
mike.save

lauren = User.create!(username: 'lauren', password: 'password', email: 'lauren@mail.com')
lauren.image = open('https://github.com/tomorrow-lauren/lauren-doodle/blob/master/jpg/lauren.jpg?raw=true')
lauren.save

# Users without photos
mom = User.create!(username: 'mom', password: 'password', email: 'mom@mail.com')
dad = User.create!(username: 'dad', password: 'password', email: 'dad@mail.com')
jim = User.create!(username: 'jim', password: 'password', email: 'jim@mail.com')
dan = User.create!(username: 'dan', password: 'password', email: 'dan@mail.com')
sabri = User.create!(username: 'sabri', password: 'password', email: 'sabri@mail.com')
tiffany = User.create!(username: 'tiffany', password: 'password', email: 'tiffany@mail.com')
eddie = User.create!(username: 'eddie', password: 'password', email: 'eddie@mail.com')
james = User.create!(username: 'james', password: 'password', email: 'james@mail.com')
meagan = User.create!(username: 'meagan', password: 'password', email: 'meagan@mail.com')
tyler = User.create!(username: 'tyler', password: 'password', email: 'tyler@mail.com')
ray = User.create!(username: 'ray', password: 'password', email: 'ray@mail.com')
catie = User.create!(username: 'catie', password: 'password', email: 'catie@mail.com')

group = marshall.created_groups.create(name: 'Team Grouvie')
group2 = mike.created_groups.create(name: 'Study Group')
group3 = alana.created_groups.create(name: 'Speed Racers')
group4 = marshall.created_groups.create(name: 'HS Friends')
group5 = lauren.created_groups.create(name: 'La Familia')
group6 = alana.created_groups.create(name: 'College')

group.members << [alana, marshall, mike, lauren]
group2.members << [alana, marshall, lauren, mike, dan, sabri, tiffany, catie, eddie, jim, james, tyler, ray, meagan]
group3.members << [marshall, alana, lauren, sabri, tiffany]
group4.members << [alana, marshall, mike, lauren]
group5.members << [alana, marshall, mike, mom, dad]
group6.members << [mike, alana, lauren, dan, tiffany]


challenge1 = group.challenges.create!(name: 'Complete React-Native Tutorial', description: 'Dive into the docs and learn all there is to know!', start_date: Date.new(2016, 4, 01), end_date: Date.new(2016, 04, 30))
challenge2 = group.challenges.create!(name: 'Watch Egghead.io Videos', description: 'This will help us learn about our app', start_date: Date.new(2016, 4, 15), end_date: Date.new(2016, 04, 20))
challenge3 = group.challenges.create!(name: 'Perfect the fast-to-slow clap', description: 'And then add to resume skills.', start_date: Date.new(2016, 3, 01), end_date: Date.new(2016, 05, 01))
challenge4 = group.challenges.create!(name: 'Vacuum the Great Hall', description: 'Vacuum the entire room and the chairs', start_date: Date.new(2016, 4, 15), end_date: Date.new(2016, 04, 25))
challenge5 = group.challenges.create!(name: 'Demo App!', description: 'Show your creation to the masses.', start_date: Date.new(2016, 3, 10), end_date: Date.new(2016, 04, 22))

challenge6 = group2.challenges.create!(name: 'Graduate', description: 'But stay in touch.', start_date: Date.new(2016, 1, 18), end_date: Date.new(2016, 05, 25))
challenge7 = group2.challenges.create!(name: 'Do a donut crawl', description: 'Heart donuts', start_date: Date.new(2016, 3, 18), end_date: Date.new(2016, 05, 20))
challenge8 = group2.challenges.create!(name: 'Watch Lecture', description: 'And then add to resume skills.', start_date: Date.new(2016, 3, 10), end_date: Date.new(2017, 05, 10))


challenge9 = group3.challenges.create!(name: 'Run 3 times this week', description: 'Take a run of 20+ minutes 3 times this week', start_date: Date.new(2016, 4, 16), end_date: Date.new(2016, 04, 23))
challenge10 = group3.challenges.create!(name: 'Swim 100 laps in the pool', description: 'Get fit', start_date: Date.new(2016, 4, 16), end_date: Date.new(2016, 04, 23))
challenge11 = group3.challenges.create!(name: 'Get 100,000 steps on pedometer this week', description: 'Walk a lot', start_date: Date.new(2016, 4, 15), end_date: Date.new(2016, 04, 22))

challenge12 = group4.challenges.create!(name: 'Book tickets to France', description: 'Prices will go up', start_date: Date.new(2016, 3, 01), end_date: Date.new(2016, 05, 01))
challenge13 = group4.challenges.create!(name: 'Reserve Pat Green tickets', description: 'Theyre going to sell out', start_date: Date.new(2016, 3, 10), end_date: Date.new(2016, 04, 30))
challenge14 = group4.challenges.create!(name: 'Read the 2nd chapter of that book', description: 'And then add to resume skills.', start_date: Date.new(2016, 3, 10), end_date: Date.new(2016, 03, 20))
challenge15 = group4.challenges.create!(name: 'Fill out common app', description: 'Its almost due', start_date: Date.new(2016, 3, 10), end_date: Date.new(2016, 04, 01))

challenge16 = group5.challenges.create!(name: 'Get your flu shot', description: 'It actually matters.', start_date: Date.new(2016, 3, 13), end_date: Date.new(2016, 04, 22))
challenge17 = group5.challenges.create!(name: 'Call Grandma this week', description: 'She would really appreciate it', start_date: Date.new(2016, 4, 15), end_date: Date.new(2016, 04, 21))
challenge18 = group5.challenges.create!(name: 'Share a funny picture this week!', description: 'Stay in touch yall', start_date: Date.new(2016, 4, 14), end_date: Date.new(2016, 04, 21))
challenge19 = group5.challenges.create!(name: 'Clean up the bathroom', description: 'It is gross.', start_date: Date.new(2016, 3, 17), end_date: Date.new(2016, 04, 22))

challenge20 = group6.challenges.create!(name: 'Vote in your primary', description: 'It actually matters.', start_date: Date.new(2016, 2, 10), end_date: Date.new(2016, 05, 18))
challenge21 = group6.challenges.create!(name: 'Sign up for Soccer', description: 'Just do it', start_date: Date.new(2016, 3, 10), end_date: Date.new(2016, 05, 01))


challenge1.participants << [alana, marshall, mike, lauren]
challenge2.participants << [lauren, marshall, mike, alana]
challenge3.participants << [lauren, alana, mike]
challenge4.participants << [alana, mike]

challenge5.participants << [alana, mike, marshall, lauren]
challenge6.participants << [lauren, dan, sabri, tiffany, mike]
challenge7.participants << [marshall, alana, lauren, sabri, tiffany]
challenge8.participants << [alana, marshall, lauren, tiffany]

challenge9.participants << [alana, marshall, lauren, sabri]
challenge10.participants << [lauren, alana, marshall, tiffany]
challenge11.participants << [alana, tiffany, sabri]

challenge12.participants << [alana, mike]
challenge13.participants << [marshall, lauren]
challenge14.participants << [marshall, alana, lauren]
challenge15.participants << [alana, marshall, mike, lauren]

challenge16.participants << [alana, marshall, mom, dad]
challenge17.participants << [mom, dad, marshall, mike]
challenge18.participants << [alana, mike, mom]
challenge19.participants << [dad, mike, marshall]

challenge20.participants << [mike, alana, lauren]
challenge21.participants << [dan, alana, lauren]

alana.comments.create!(group: group, content: 'React-Native is so cool!!')

tiffany.comments.create!(group: group2, content: "Amazing!")

alana.comments.create!(group: group3, content: "Already ran twice. Come on guys")
marshall.comments.create!(group: group3, content: "Swimming tomorrow")

alana.comments.create!(group: group4, content: "Seriously the tickets will sell out just buy them")
marshall.comments.create!(group: group4, content: "Can you just order 2 for me?")
lauren.comments.create!(group: group4, content: "Stop being so lazy marshall")

mom.comments.create!(group: group5, content: "Send pictures please!")
mom.comments.create!(group: group5, content: "I don't want to spoil this movie but you have to see it. It was so good. Whatever you think will happen doesn't actually happen. Don't worry that won't spoil it. But it's really pretty sad because everyone dies at the end. Oh shoot! Sorry!")
marshall.comments.create!(group: group5, content: "Mom!")

mike.comments.create!(group: group6, content: "Sup")
alana.comments.create!(group: group6, content: "Yo")


# clip_art = ['http://worldartsme.com/images/fall-squirrel-clipart-1.jpg', 'http://clipartbold.com/wp-content/uploads/2016/02/Cute-squirrel-cartoon-clipart-image-5.png', 'http://clipartion.com/wp-content/uploads/2015/11/running-squirrel-clipart.png', 'http://images.clipartpanda.com/squirrel-clipart-cartoon_squirrel_with_an_acorn_nut_0071-0908-3116-2318_SMU.jpg', 'http://comps.canstockphoto.com/can-stock-photo_csp13648213.jpg', 'http://worldartsme.com/images/fall-squirrel-clipart-1.jpg', 'http://clipartbold.com/wp-content/uploads/2016/02/Cute-squirrel-cartoon-clipart-image-5.png', 'http://clipartion.com/wp-content/uploads/2015/11/running-squirrel-clipart.png', 'http://images.clipartpanda.com/squirrel-clipart-cartoon_squirrel_with_an_acorn_nut_0071-0908-3116-2318_SMU.jpg', 'http://comps.canstockphoto.com/can-stock-photo_csp13648213.jpg']

# completed_challenges = Participation.all.sample(10)

# completed_challenges.each_with_index do |participation, index|
#   participation.completed = true
#   participation.image = open(clip_art[index])
#   participation.save
# end

p = Participation.find(3)
p.completed = true
p.image = open('http://s3.amazonaws.com/grouvie/participations/images/000/000/003/original/data?1458248731')
p.save

p = Participation.find(1)
p.completed = true
p.image = open('http://s3.amazonaws.com/grouvie/participations/images/000/000/001/original/data?1458248811')
p.save

p = Participation.find(2)
p.completed = true
p.image = open('http://s3.amazonaws.com/grouvie/participations/images/000/000/002/original/data?1458248979')
p.save

p = Participation.find(4)
p.completed = true
p.image = open('http://s3.amazonaws.com/grouvie/participations/images/000/000/002/original/data?1458248979')
p.save

p = Participation.find(7)
p.completed = true
p.image = open('http://s3.amazonaws.com/grouvie/participations/images/000/000/007/original/data?1458248761')
p.save

p = Participation.find(8)
p.completed = true
p.image = open('http://s3.amazonaws.com/grouvie/participations/images/000/000/008/original/data?1458248827')
p.save

p = Participation.find(6)
p.completed = true
p.image = open('http://s3.amazonaws.com/grouvie/participations/images/000/000/006/original/data?1458249035')
p.save

p = Participation.find(9)
p.completed = true
p.image = open('http://s3.amazonaws.com/grouvie/participations/images/000/000/009/original/open-uri20160317-3-102qrzc?1458248607')
p.save

p = Participation.find(10)
p.completed = true
p.image = open('http://s3.amazonaws.com/grouvie/participations/images/000/000/010/original/data?1458248852')
p.save

