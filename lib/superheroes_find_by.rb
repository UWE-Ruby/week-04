
#
# Here is the original implementation of SuperHeroes#find_by method.
# 
# This will find all the SuperHeroes that match ANY of criteria. Look at the 
# file 'spec/superheroes_find_by.rb' and uncomment those tests and change this 
# method so that it finds superheroes that match all of the criteria.
# 
# def SuperHeroes.find_by(criteria)
#   criteria.map do |field,value|
#     find_all do |hero|
#       hero[field] == value
#     end
#   end.flatten.uniq
# end

def SuperHeroes.find_by(criteria)
  criteria.inject(self) do |found,term|
    found.find_all {|hero| hero[term.first] == term.last }
  end
end