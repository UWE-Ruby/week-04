require "spec_helper"

describe "#search_for_quote" do
  
  context "when the file does not exist" do
    
    it "should return an empty list of results" do
      search_for_quote(:file => "FILE_DOES_NOT_EXIST",:start_with => "The").should be_empty
    end
    
  end
  
  context "when the file does exist" do
    
    context "when no search criteria has been specified" do
      
      it "should return all quotes" do
        search_for_quote(:file => TEXT_FILE).should_not be_empty
      end
      
    end
    
    context "when search criteria has been specified" do
      
      describe "contains" do
        
        it "should return all the quotes that contain the criteria" do
          results = search_for_quote(:file => TEXT_FILE,:include => "dude")
          results.should have(3).items
        end
        
      end
      
      describe "starts with" do
        
        it "should return all the quotes that contain the criteria" do
          results = search_for_quote(:file => TEXT_FILE,:start_with => "Her")

          results.should have(1).items
          results.first.should == "Her life is in your hands dude"
        end
        
      end
      
      describe "ends with" do
        
        it "should return all the quotes that contain the criteria" do
          results = search_for_quote(:file => TEXT_FILE,:end_with => "dude")

          results.should have(2).items
          results.should == [ 'Calmer than you are dude', 'Her life is in your hands dude' ]
          
        end
        
      end
    end
    
  end
  
end