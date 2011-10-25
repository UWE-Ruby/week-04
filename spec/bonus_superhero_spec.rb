require "spec_helper"

Superhero = Struct.new :name, :origin, :nemesis, :nick_name


def all_heroes
  [ 
    Superhero.new("Batman", "Gotham City", "Joker", "Caped Crusader"),
    Superhero.new("Robin", "Gotham City", "Joker", "Boy Wonder"),
    Superhero.new("Superman", "Krypton", "Lex Luthor", "Kal El"),
    Superhero.new("Supergirl", "Krypton", "Bizzaro", "Kara Zor-El")
  ]
end


def find_superheroes(criteria)
  criteria.map do |field,value|
    all_heroes.find_all do |hero|
      hero[field] == value
    end
  end.flatten.uniq
end

#
# What lies ahead is an additional exercise that you may venture onto if you
# so wish. The object is to define a method that matches the criteria.
# 
# Simply uncomment the examples below and allow it to guide you to the method.
# 
# describe "#find_superheroes" do
#   
#   context "when searching for one criteria" do
#     
#     it "should return an Array even when only character matches" do
#       find_superheroes(:name => 'Batman').should have(1).items
#     end
#     
#     it "should return all characters that match the criteria" do
#       find_superheroes(:origin => 'Krypton').should have(2).items
#     end
#     
#   end
# 
#   context "when searching for two criteria" do
#     
#     it "should an empty Array when no characters match" do
#       find_superheroes(:origin => 'Krypton', :nemesis => 'Joker').should have(0).items
#     end
#     
#     it "should retun all characters that match the criteria" do
#       find_superheroes(:origin => 'Gotham City', :nemesis => 'Joker').should have(2).items
#       find_superheroes(:origin => 'Gotham City', :nick_name => 'Boy Wonder').should have(1).items
#     end
#     
#   end
#   
# end