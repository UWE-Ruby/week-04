# 
# Here is where you will write the method #search_for_quote
# 
# For more information about methods and their parameters I encourage you to 
# read some of the following:
# 
# @see http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls
# @see Programing Ruby, Chapter 6 
#

def search_for_quote(params = {})
  all_quotes(params.delete(:file)).map do |quote|
    params.empty? ? quote : params.map {|key,value| quote if quote.send("#{key}?",value) }.uniq
  end.flatten.compact
end

