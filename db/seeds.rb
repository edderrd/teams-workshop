def seed_default_teams
  [
      { name: 'Saprissa', image_url: 'http://www.forodecostarica.com/attachments/262398d1384969055-kits-pes-2014-a-escudo-saprissa.png' },
      { name: 'LDA', image_url: 'http://www.icon100.com/up/2851/512/Escudo-Liga-01.png' },
      { name: 'Cartago FC', image_url: 'http://upload.wikimedia.org/wikipedia/en/thumb/a/a3/CS_Cartagines_2013.svg/875px-CS_Cartagines_2013.svg.png' },
      { name: 'Club Sport Herediano', image_url: 'http://fxd.cr/wp-content/uploads/2014/12/Club-Sport-Herediano2.png' },
      { name: 'Puntarenas FC', image_url: 'https://promesadefutbol.files.wordpress.com/2012/04/puntarenas-fc.png' },
      { name: 'Santos de Guapiles FC', image_url: 'http://www.resultados-futbol.com/escudo-santos-guapiles-invierno-costa-rica-rf_765894.jpg' },
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