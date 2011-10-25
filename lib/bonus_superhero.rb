Superhero = Struct.new :name, :origin, :nemesis, :nick_name


SuperHeroes = [ 
  Superhero.new("Batman", "Gotham City", "Joker", "Caped Crusader"),
  Superhero.new("Robin", "Gotham City", "Joker", "Boy Wonder"),
  Superhero.new("Superman", "Krypton", "Lex Luthor", "Kal El"),
  Superhero.new("Supergirl", "Krypton", "Bizzaro", "Kara Zor-El") ]


def SuperHeroes.find_by(criteria)
  criteria.map do |field,value|
    find_all do |hero|
      hero[field] == value
    end
  end.flatten.uniq
end