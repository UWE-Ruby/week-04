

# 
# Here is where you will write the #url_builder method that are defined in the 
# associated specifications file.
# 
# For more information about methods and their parameters I encourage you to 
# read some of the following:
# 
# @see http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls
# @see Programing Ruby, Chapter 6 
#

def url_builder(url,options = {})
  options = { :results => 10 }.merge(options)
  
  param_string = options.reject{|k,v| v == nil }.map {|key,value| "#{key}=#{value}" }.join("&")
  
  "#{url}?#{param_string}"
end