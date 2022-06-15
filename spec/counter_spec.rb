require "counter"

RSpec.describe Counter do

  it "initiates counter at zero" do
    counter = Counter.new
    result = counter.report
    expect(result).to eq "Counted to 0 so far."
  end

  it "returns correct count after adding one number" do
    counter = Counter.new
    counter.add(1)
    result = counter.report
    expect(result).to eq "Counted to 1 so far."
  end

  it "returns correct count after adding negative number" do
    counter = Counter.new
    counter.add(-1)
    result = counter.report
    expect(result).to eq "Counted to -1 so far."
  end

  it "returns correct count after adding two numbers" do
    counter = Counter.new
    counter.add(1)
    counter.add(2)
    result = counter.report
    expect(result).to eq "Counted to 3 so far."
  end

end