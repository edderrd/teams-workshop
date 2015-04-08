100.times do
  team = Team.create(name: Faker::Lorem.word)

  rand(11).times do
    player = Player.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        age: rand(18...33),
        salary: rand(100...3000)
    )
    team.players << player
  end
end