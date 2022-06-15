require "report_length"

RSpec.describe "report_length method" do

  it "passes single word string to method" do
    result = report_length("hello")
    expect(result).to eq "This string was 5 characters long."
  end

  it "passes multi word string to method" do
    result = report_length("hello world")
    expect(result).to eq "This string was 11 characters long."
  end

end