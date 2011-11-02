
# 
# Here is where you will write the method #display_superheroes.
# 
# For more information about methods and their parameters I encourage you to 
# read some of the following:
# 
# @see http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls
# @see Programing Ruby, Chapter 6 
#

# display_superheroes(hero)  => [ hero ]
# display_superheroes([ hero_1, hero_2 ]) => [ [ hero_1, hero_2 ] ]
def display_superheroes(*heroes)
  
  heroes.flatten.uniq.each do |hero|
    puts hero
  end
  
end