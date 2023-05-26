require "disc"
require "rspec"

describe Disc do
  let(:tower) {Tower.new}
  subject(:disc) {Disc.new(2,tower)}

  describe "#initialize" do
    it "should create a tower element that points to a Tower instance" do
      expect(disc.tower.class).to be(Tower)
    end

    it "should have a numerical size attribute" do
      expect(disc.size).to be(2)
    end
  end
  
end