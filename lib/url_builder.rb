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

def url_builder(url,parameters = {})
  parameters = { :results => 10 }.merge(parameters)
  
  # KEY=VALUE&KEY=VALUE&KEY=VALUE
  param_string = parameters.map do |k,v|
    
    unless v == nil
      "#{k}=#{v}"
    end
    
  end.compact.join("&")


  "#{url}?#{param_string}"
  
end
