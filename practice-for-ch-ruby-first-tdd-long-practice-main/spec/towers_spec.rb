require "rspec"
require 'towers'

describe Tower do
  subject(:tower) {Tower.new}
  let(:disc) { Disc.new(2,tower) }


  describe "#initialize" do
    it "creates a 'stack' attribute, which is an empty array" do
      expect(tower.stack.class).to be(Array)
      expect(tower.stack).to be_empty
    end
  end

  describe "#push" do
    it "pushes a disc object onto the top of the stack array" do
      allow(disc).to receive(:tower).and_return(tower)
      tower.push(disc)
      expect(tower.stack).to include(disc)
    end

    it "moves the disc's tower attribute to the current tower object" do
      tower.push(disc)
      allow(disc).to receive(:tower).and_return(tower)
      expect(disc.tower).to eq(tower)
    end
  end

  describe "#pop" do
    it "removes the top disc from the stack and returns the disc" do
      tower.push(disc)
      expect(tower.pop).to eq(disc)
    end
    
  end

  describe "#peek" do
    it "returns the disc at the top of the stack" do
      tower.push(disc)
      expect(tower.peek).to eq(disc)
    end
  end
 
end