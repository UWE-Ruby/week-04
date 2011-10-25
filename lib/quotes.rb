
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

# 
# Here is where you will write the methods that are defined in the associated 
# specifications file.
# 
# @see http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls
#