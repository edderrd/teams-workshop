def seed_default_teams
  [
      { name: 'Saprissa' },
      { name: 'LDA' },
      { name: 'Cartago' },
      { name: 'Heredia' },
      { name: 'Puntarenas' },
      { name: 'Brujas FC' },
      { name: 'Limon FC' },
  ].each do |default_team|
    team = Team.create(default_team)
    seed_players team
  end
end

def seed_random_teams
  100.times do
    team = Team.create(name: Faker::Lorem.word)
    seed_players team
  end
end

def seed_players(team)
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

# run seeds
seed_default_teams