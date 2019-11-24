# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

event_types = EventType.create([
  {
    description: 'Small group'
  },
  {
    description: 'Discipleship Community'
  },
  {
    description: 'Party'
  },
  {
    description: 'Other'
  }
  ])

users = User.create([
  {
    first_name: 'Discipleship Community',
    last_name: 'Pastor',
    email: 'pastor@discipleshipcommunity.com',
    password: 'password',
    password_confirmation: 'password'
  },
  {
    first_name: 'Group',
    last_name: 'Leader',
    email: 'leader@group.com',
    password: 'password',
    password_confirmation: 'password'
  },
  {
    first_name: 'Group',
    last_name: 'Member',
    email: 'member@group.com',
    password: 'password',
    password_confirmation: 'password'
  },
  {
    first_name: 'Example',
    last_name: 'Person',
    email: 'example@site.com',
    password: 'password',
    password_confirmation: 'password'
  },
  {
    first_name: 'Bugger',
    last_name: 'McBuggerson',
    email: 'bugger.mcbuggerson@gmail.com',
    password: 'bugger',
    password_confirmation: 'bugger'
  },
  {
    first_name: 'Tester',
    last_name: 'McTesterson',
    email: 'tester_mctesterson@gmail.com',
    password: 'testingallthetests',
    password_confirmation: 'testingallthetests'
  },
  {
    first_name: 'System',
    last_name: 'Administrator',
    email: 'admin@snack.app',
    password: 'password',
    password_confirmation: 'password',
    admin: true
  },
  {
    first_name: 'Discipleship Community',
    last_name: 'Coordinator',
    email: 'coordinator@dc.app',
    password: 'password',
    password_confirmation: 'password'
  },
  {
    first_name: 'Group',
    last_name: 'Coordinator',
    email: 'coordinator@group.app',
    password: 'password',
    password_confirmation: 'password'
  }
])

99.times do |n|
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  email = "fakeperson#{n+1}@faker.net"
  password = 'password'
  User.create!(first_name: first_name,
               last_name: last_name,
               email: email,
               password: password,
               password_confirmation: password)
end

roles = Role.create([
  {
    description: 'Discipleship Community pastor'
  },
  {
    description: 'Small group leader'
  },
  {
    description: 'Small group member'
  },
  {
    description: 'Discipleship Community coordinator'
  },
  {
    description: 'Small group coordinator'
  }
])

user_roles = UserRole.create([
  {
    user_id: users[0].id,
    role_id: roles[0].id
  },
  {
    user_id: users[1].id,
    role_id: roles[1].id,
    small_group_id: 1
  },
  {
    user_id: users[2].id,
    role_id: roles[2].id,
    small_group_id: 1
  },
  {
    user_id: users[6].id,
    role_id: roles[1].id,
    small_group_id: 1
  },
  {
    user_id: users[7].id,
    role_id: roles[3].id,
    small_group_id: 1
  },
  {
    user_id: users[8].id,
    role_id: roles[4].id,
    small_group_id: 1
  }
])

discipleship_communities = DiscipleshipCommunity.create([
  {
    pastor_id: users[0].id,
    night: 'Tuesday'
  },
  {
    pastor_id: users[0].id,
    night: 'Wednesday'
  },
  {
    pastor_id: users[0].id,
    night: 'Thursday'
  }
])

small_groups = SmallGroup.create([
  {
    leader_id: users[1].id,
    discipleship_community_id: discipleship_communities[0].id
  }
])
