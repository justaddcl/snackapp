# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

event_type_meeting = EventType.create({ event_type_description: 'Meeting' })
event_type_dc = EventType.create({ event_type_description: 'Discipleship Community' })
event_type_party = EventType.create({ event_type_description: 'Party' })
event_type_other = EventType.create({ event_type_description: 'Other' })

users = User.create([
  { first_name: 'Discipleship Community', last_name: 'Pastor', email: 'pastor@discipleshipcommunity.com', 
      password: 'password', password_confirmation: 'password' },
  { first_name: 'Group', last_name: 'Leader', email: 'leader@group.com',
      password: 'password', password_confirmation: 'password' },
  { first_name: 'Group', last_name: 'Member', email: 'member@group.com',
    password: 'password', password_confirmation: 'password' },
    { first_name: 'Example', last_name: 'Person', email: 'example@site.com',
      password: 'password', password_confirmation: 'password' },
  { first_name: 'Bugger', last_name: 'McBuggerson', email: 'bugger.mcbuggerson@gmail.com',
    password: 'bugger', password_confirmation: 'bugger' },
  { first_name: 'Tester', last_name: 'McTesterson', email: 'tester_mctesterson@gmail.com',
      password: 'testingallthetests', password_confirmation: 'testingallthetests' }
])

roles = Role.create([
  { role_description: 'Discipleship Community pastor' },
  { role_description: 'Small group leader' },
  { role_description: 'Small group member' }
])

user_roles = UserRole.create([
  { user_id: users[0].id, role_id: roles[0].id },
  { user_id: users[1].id, role_id: roles[1].id, small_group_id: 1},
  { user_id: users[2].id, role_id: roles[2].id, small_group_id: 1}
])

discipleship_communities = DiscipleshipCommunity.create([
  { pastor_id: users[0].id, discipleship_community_night: 'Tuesday'},
  { pastor_id: users[0].id, discipleship_community_night: 'Wednesday'},
  { pastor_id: users[0].id, discipleship_community_night: 'Thursday'}
])

small_groups = SmallGroup.create([
  { leader_id: users[1].id, discipleship_community_id: discipleship_communities[0].id}
])
