# 
# Here is where you will write the method #search_for_quote
# 
# For more information about methods and their parameters I encourage you to 
# read some of the following:
# 
# @see http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls
# @see Programing Ruby, Chapter 6 
#
# { :file => 'filename', ... }

def find_all_quotes_include(quotes,value)
  quotes.find_all {|quote| quote.include?(value) }
end

def find_all_quotes_end_with(quotes,value)
  quotes.find_all {|quote| quote.end_with?(value) }
end

def find_all_quotes_start_with(quotes,value)
  quotes.find_all {|quote| quote.include?(value) }
end

# # { :start_with => asdfdf, :include => asdf }
def search_for_quote(params = {})
  found_quotes = all_quotes(params.delete(:file))
  
  params.each do |key,value|
    found_quotes = found_quotes.find_all do |quote| 
      quote.send("#{key}?",value) if quote.respond_to? "#{key}?"
    end
  end
  
  found_quotes
end