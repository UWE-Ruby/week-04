require "spec_helper"

describe "#find_quote" do
  
  context "when the file does not exist" do
    
    it "should return the default quote" do
      default_quote = find_quote("FILE_DOES_NOT_EXIST",3)
      default_quote.should == "Could not find a quote at this time"
    end
    
  end
  
  context "when the file exists" do
    
    it "should return a (random) quote when a line value is not specified" do
      quote = find_quote(TEXT_FILE)
      quote.should_not be_nil
    end
    
    context "when a single line has been specified" do

      it "should return the correct value at the specified line" do
        quote = find_quote(TEXT_FILE,1)
        quote.should == "The dude abides"
      end
      
      context "when the line specified is greater than the number of quotes" do
        
        it "should return any quote" do
          quote = find_quote(TEXT_FILE,999)
          quote.should_not be_nil
        end
        
      end
      
    end
    
  end
  
end