require "present"

RSpec.describe Present do

  context "when present is wrapped, then unwrapped" do
    it "returns unwrapped present" do
      present = Present.new
      present.wrap("PlayStation 5")
      expect(present.unwrap).to eq "PlayStation 5"
    end
  end

  context "when second present wrapped" do
    it "returns appropriate error" do
      present = Present.new
      present.wrap("PlayStation 5")
      expect { present.wrap("Nintendo Switch") }.to raise_error "A contents has already been wrapped."
    end
  end

  context "when present unwrapped, without wrapping present first" do
    it "returns appropriate error" do
      present = Present.new
      expect { present.unwrap }.to raise_error "No contents have been wrapped."
    end
  end

end