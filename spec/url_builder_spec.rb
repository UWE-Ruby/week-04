require "spec_helper"

describe "#url_builder" do
  
  let(:url) { "http://google.com" }
  
  context "when given no parameters" do
    
    it "should generate a url with 10 results and ascending sort by defaults" do
      url_builder(url).should == "#{url}?results=10&sort=asc"
    end
    
  end
  
  context "when given a single parameter" do
    
    it "should override the default parameters" do
      url_builder(url,:results => 20).should == "#{url}?results=20&sort=asc"
    end
    
    it "should append the parameter to the url" do
      url_builder(url,:search => 'burgers').should == "#{url}?results=10&sort=asc&search=burgers"
    end
    
  end
  
  context "when given multiple parametesr" do
    
    it "should append each parameter with an &" do
      url_builder(url,:results => '20',:search => 'burgers').should == "#{url}?results=20&sort=asc&search=burgers"
    end
    
  end
  
  context "when a parameter is nil" do
    
    it "should ignore the parameter" do
      url_builder(url,:results => '20',:search => 'burgers',:sort_by => nil).should == "#{url}?results=20&sort=asc&search=burgers"
    end
    
  end
  
  context "when a paramter is false" do
    
    it "should include the parameter" do
      url_builder(url,:results => '20',:search => 'burgers',:safe_search => false).should == "#{url}?results=20&sort=asc&search=burgers&safe_search=false"
    end
    
  end
  
end