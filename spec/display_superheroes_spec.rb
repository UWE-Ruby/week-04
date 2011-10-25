require "spec_helper"

describe "#display_superheroes" do
  
  context "when given one hero" do
    
    it "should display all the details about the hero" do
      should_receive(:puts).once
      display_superheroes(SuperHeroes.first)
    end
    
  end
  
  context "when given multiple heroes" do
    
    it "should display all the heroes" do
      should_receive(:puts).exactly(SuperHeroes.length)
      display_superheroes SuperHeroes
    end
    
    it "should allow parameters to be Arrays of heroes of single heroes" do
      should_receive(:puts).exactly(SuperHeroes.length)
      display_superheroes SuperHeroes.first, SuperHeroes[1..-1]
    end

    it "should not display duplicated superheroes" do
      should_receive(:puts).exactly(SuperHeroes.length)
      display_superheroes SuperHeroes, SuperHeroes.first
    end
    
  end
  
  
end