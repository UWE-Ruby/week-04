#
# This is a workaround for require_relative being missing from Ruby 1.8.7.
# Though the assigns are targetted at Ruby 1.9.2 I wanted to ensure that they
# are possible in Ruby 1.8.7
# 
unless Kernel.respond_to?(:require_relative)
  module Kernel
    def require_relative(path)
      require File.join(File.dirname(caller[0]), path.to_str)
    end
  end
end


# Loads the url_builder file which will contain your method #url_builder

require_relative 'url_builder'


#
# Both of the quotes files should use this method #all_quotes. It is included
# in this file as this is common to both of those files.
# 

#
# @param [String] filename the name of the file to load all the quotes.
# 
# @return [Array<String>] all the quotes found in the file.
#
def all_quotes(filename)
  # readlines will return an array of lines but includes the newline character "\n"
  # here we strip that off of all the quotes.
  if File.exists? filename
    File.readlines(filename).map {|quote| quote.strip }
  else
    []
  end
end

# Loads the search_for_quote and find_quote files which will contain your 
# methods: #search_for_quote and #find_quote

require_relative 'search_for_quote'
require_relative 'find_quote'




#
# This struct and array is used by both of the superhero related files.
# It is included here so that it will be avaialble to both of those files
# 

Superhero = Struct.new :name, :origin, :nemesis, :nick_name

SuperHeroes = [ 
  Superhero.new("Batman", "Gotham City", "Joker", "Caped Crusader"),
  Superhero.new("Robin", "Gotham City", "Joker", "Boy Wonder"),
  Superhero.new("Superman", "Krypton", "Lex Luthor", "Kal El"),
  Superhero.new("Supergirl", "Krypton", "Bizzaro", "Kara Zor-El") ]


# Loads the display_superheroes and find_superheroes files which  will contain
# your methods: #display_superheroes and #find_superheroes

require_relative 'display_superheroes' 
require_relative 'superheroes_find_by'