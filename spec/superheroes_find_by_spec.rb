require "spec_helper"

#
# What lies ahead is an additional exercise that you may venture onto if you
# so wish. The object is to define a method that matches the criteria.
# 
# Simply uncomment the examples below and allow it to guide you to the method.
# 
describe "SuperHeroes#find_by" do
  
  context "when searching for one criteria" do
    
    it "should return an Array even when only character matches" do
      SuperHeroes.find_by(:name => 'Batman').should have(1).items
    end
    
    it "should return all characters that match the criteria" do
      SuperHeroes.find_by(:origin => 'Krypton').should have(2).items
    end
    
  end

  context "when searching for two criteria" do
    
    it "should an empty Array when no characters match" do
      SuperHeroes.find_by(:origin => 'Krypton', :nemesis => 'Joker').should have(0).items
    end
    
    it "should retun all characters that match the criteria" do
      SuperHeroes.find_by(:origin => 'Gotham City', :nemesis => 'Joker').should have(2).items
      SuperHeroes.find_by(:origin => 'Gotham City', :nick_name => 'Boy Wonder').should have(1).items
    end
    
  end
  
end