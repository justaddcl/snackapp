# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([
                      {
                        first_name: 'Discipleship Community',
                        last_name: 'Pastor',
                        email: 'pastor@discipleshipcommunity.com',
                        password: 'password',
                        password_confirmation: 'password'
                      },
                      {
                        first_name: 'DC',
                        last_name: 'Pastor 2',
                        email: 'pastor@discipleshipcommunity.com',
                        password: 'password',
                        password_confirmation: 'password'
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
                        last_name: 'Leader',
                        email: 'leader@group.com',
                        password: 'password',
                        password_confirmation: 'password'
                      },
                      {
                        first_name: 'Group',
                        last_name: 'Coordinator',
                        email: 'coordinator@group.app',
                        password: 'password',
                        password_confirmation: 'password'
                      },
                      {
                        first_name: 'Group',
                        last_name: 'Member',
                        email: 'member@group.com',
                        favorite_snack: 'All snacks',
                        dietary_restrictions: 'No vegan',
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
                      }
                    ])

99.times do |n|
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  email = "fakeperson#{n + 1}@faker.net"
  password = 'password'
  User.create!(
    first_name: first_name,
    last_name: last_name,
    email: email,
    password: password,
    password_confirmation: password
  )
end

# binding.pry

user_roles = UserRole.create([
                               {
                                 user_id: users[0].id,
                                 type: UserRole.types.values[0]
                               },
                               {
                                 user_id: users[1].id,
                                 type: UserRole.types.values[1],
                                 small_group_id: 1
                               },
                               {
                                 user_id: users[2].id,
                                 type: UserRole.types.values[2],
                                 small_group_id: 1
                               },
                               {
                                 user_id: users[3].id,
                                 type: UserRole.types.values[3],
                                 small_group_id: 1
                               },
                               {
                                 user_id: users[4].id,
                                 type: UserRole.types.values[4],
                                 small_group_id: 1
                               },
                               {
                                 user_id: users[8].id,
                                 type: UserRole.types.values[4],
                                 small_group_id: 1
                               }
                             ])

discipleship_communities = DiscipleshipCommunity.create([
                                                          {
                                                            pastor_id: users[0].id,
                                                            night: DiscipleshipCommunity.nights[:tuesday]
                                                          },
                                                          {
                                                            pastor_id: users[1].id,
                                                            night: DiscipleshipCommunity.nights[:wednesday]
                                                          },
                                                          {
                                                            pastor_id: users[0].id,
                                                            night: DiscipleshipCommunity.nights[:thursday]
                                                          }
                                                        ])

small_groups = SmallGroup.create([
                                   {
                                     leader_id: users[2].id,
                                     discipleship_community_id: discipleship_communities[0].id
                                   },
                                   {
                                     leader_id: users[6].id,
                                     discipleship_community_id: discipleship_communities[1].id
                                   },
                                   {
                                     leader_id: users[0].id,
                                     discipleship_community_id: discipleship_communities[2].id
                                   }
                                 ])

events = Event.create([
                        {
                          date: Faker::Date.between(from: Date.today, to: 1.year.from_now),
                          description: Faker::Lorem.sentence(word_count: 3),
                          start_time: Faker::Time.forward(days: 7, period: :afternoon),
                          gatherable: small_groups[0],
                          type: Event.types[:small_group]
                        }
                      ])

assignments = Assignment.create([
                                  {
                                    user: users[4],
                                    event: events[0]
                                  }
                                ])
