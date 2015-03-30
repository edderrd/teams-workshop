100.times do
  team = Team.create(name: Faker::Lorem.word)

  rand(11).times do
    player = Player.create(name: Faker::Name.name, number: Faker::Number.digit)
    team.players << player
  end
end