# Users
alana = User.create!(username: 'alana', password: 'password', email: 'alana@mail.com')
marshall = User.create!(username: 'marshall', password: 'password', email: 'marshall@mail.com')
mike = User.create!(username: 'mike', password: 'password', email: 'mike@mail.com')
lauren = User.create!(username: 'lauren', password: 'password', email: 'lauren@mail.com')

group = marshall.created_groups.create(name: 'Team Grouvie')

group.members << [alana, marshall, mike, lauren]

challenge = group.challenges.create!(name: 'Build an App', description: 'Create an app using Rails and React Native to help its users reach goals / take selfies', start_date: Date.new(2016, 3, 10), end_date: Date.new(2016, 03, 18))

challenge.participants << [alana, marshall, mike, lauren]

alana.comments.create!(group: group, content: 'hello, world!')