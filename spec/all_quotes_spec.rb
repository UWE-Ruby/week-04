require "spec_helper"

describe "#all_quotes" do
  
  context "when the file does not exist" do
    
    it "should return an empty array of quotes" do
      all_quotes("FILE_DOES_NOT_EXIST").should be_empty
    end
    
  end
  
  context "when the file does exist" do
    
    it "should return all the quotes found in the file" do
      all_quotes(TEXT_FILE).should_not be_empty
    end
    
    describe "first quote" do
      
      it "should not end with a newline character" do
        first_quote = all_quotes(TEXT_FILE).first
        first_quote.end_with?("\n").should be_false
      end
      
    end
    
  end
  
end