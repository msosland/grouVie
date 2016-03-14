# Users
User.delete_all
Group.delete_all
Challenge.delete_all
Comment.delete_all
Participation.delete_all
Comment.delete_all

alana = User.create!(username: 'alana', password: 'password', email: 'alana@mail.com')
marshall = User.create!(username: 'marshall', password: 'password', email: 'marshall@mail.com')
mike = User.create!(username: 'mike', password: 'password', email: 'mike@mail.com')
lauren = User.create!(username: 'lauren', password: 'password', email: 'lauren@mail.com')

group = marshall.created_groups.create(name: 'Team Grouvie')
group2 = mike.created_groups.create(name: 'Squirrels')
group3 = alana.created_groups.create(name: 'Sea Lions')

group.members << [alana, marshall, mike, lauren]
group2.members << [alana, mike]
group3.members << [marshall, alana, lauren]

challenge = group.challenges.create!(name: 'Build an App', description: 'Create an app using Rails and React Native to help its users reach goals / take selfies', start_date: Date.new(2016, 3, 10), end_date: Date.new(2016, 03, 18))
challenge2 = group.challenges.create!(name: 'Learn React Native', description: 'Dive into the docs and learn all there is to know!', start_date: Date.new(2016, 3, 10), end_date: Date.new(2016, 03, 18))
challenge3 = group.challenges.create!(name: 'Create seed data', description: 'Make data to help test your new app.', start_date: Date.new(2016, 3, 10), end_date: Date.new(2016, 03, 18))

challenge4 = group2.challenges.create!(name: 'Clean the fridge', description: 'Throw away all the spoiled food', start_date: Date.new(2016, 3, 10), end_date: Date.new(2016, 03, 18))
challenge5 = group2.challenges.create!(name: 'Vacuum the ROR', description: 'Vacuum the entire room and the chairs', start_date: Date.new(2016, 3, 10), end_date: Date.new(2016, 03, 18))

challenge6 = group3.challenges.create!(name: 'Run 3 times this week', description: 'Take a run of 20+ minutes 3 times this week', start_date: Date.new(2016, 3, 10), end_date: Date.new(2016, 03, 18))
challenge7 = group3.challenges.create!(name: 'Watch the new episode of the Walking Dead', description: 'Watch the entire episode to discuss with the group', start_date: Date.new(2016, 3, 10), end_date: Date.new(2016, 03, 15))

challenge.participants << [alana, marshall, mike, lauren]
challenge2.participants << [alana, marshall, mike, lauren]
challenge3.participants << [lauren, alana]

challenge4.participants << [alana, mike]
challenge5.participants << [alana, mike]

challenge6.participants << [marshall, lauren]
challenge7.participants << [marshall, alana, lauren]

alana.comments.create!(group: group, content: 'hello, world!')
mike.comments.create!(group: group, content: "Let's do this!")
marshall.comments.create!(group: group, content: "This is super frustrating")
lauren.comments.create!(group: group, content: "We can do it!")
mike.comments.create!(group: group2, content: "I plan on cleaning the fridge well!")
lauren.comments.create!(group: group3, content: "Can't wait to watch the Walking Dead first!")
alana.comments.create!(group: group3, content: "Can you guys finally finish the episode?")
marshall.comments.create!(group: group3, content: "That was amazing!")
