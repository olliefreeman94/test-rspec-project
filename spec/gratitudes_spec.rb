require "gratitudes"

RSpec.describe Gratitudes do

  context "initially" do
    it "returns base string when no gratitudes added" do
      gratitudes = Gratitudes.new
      expect(gratitudes.format).to eq "Be grateful for: "
    end
  end

  context "when one gratitude added" do
    it "returns formatted string" do
      gratitudes = Gratitudes.new
      gratitudes.add("dogs")
      expect(gratitudes.format).to eq "Be grateful for: dogs"
    end
  end

  context "when many gratitudes added" do
    it "returns formatted string" do
      gratitudes = Gratitudes.new
      gratitudes.add("dogs")
      gratitudes.add("cats")
      gratitudes.add("sunshine")
      expect(gratitudes.format).to eq "Be grateful for: dogs, cats, sunshine"
    end
  end

end