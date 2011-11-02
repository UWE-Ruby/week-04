# 
# Here is where you will write the method #find_quote
# 
# For more information about methods and their parameters I encourage you to 
# read some of the following:
# 
# @see http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls
# @see Programing Ruby, Chapter 6 
#
# 
def find_quote(filename,number = 0)
  quotes = all_quotes(filename)
  number = number.to_i
  
  if quotes.empty?
    "Could not find a quote at this time"
  else
    if number > quotes.length - 1
      quotes.sample
    else
      quotes[number]
    end
  end
end