
# 
# Here is where you will write the method #display_superheroes.
# 
# For more information about methods and their parameters I encourage you to 
# read some of the following:
# 
# @see http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls
# @see Programing Ruby, Chapter 6 
#


def display_superheroes(*heroes)
  heroes.flatten.uniq.each do |hero|
    puts "Hero: #{hero.name}"
  end
end