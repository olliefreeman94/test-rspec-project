require "string_builder"

RSpec.describe StringBuilder do

  it "initiates an empty string" do
    string_builder = StringBuilder.new
    result = string_builder.output
    expect(result).to eq ""
  end

  it "returns length 0 for an empty string" do
    string_builder = StringBuilder.new
    result = string_builder.size
    expect(result).to eq 0
  end

  it "returns correct string after one string added" do
    string_builder = StringBuilder.new
    string_builder.add("foo")
    result = string_builder.output
    expect(result).to eq "foo"
  end

  it "returns correct length after one string added" do
    string_builder = StringBuilder.new
    string_builder.add("foo")
    result = string_builder.size
    expect(result).to eq 3
  end

  it "returns correct string after two strings added" do
    string_builder = StringBuilder.new
    string_builder.add("foo")
    string_builder.add("bar")
    result = string_builder.output
    expect(result).to eq "foobar"
  end

  it "returns correct length after one string added" do
    string_builder = StringBuilder.new
    string_builder.add("foo")
    string_builder.add("bar")
    result = string_builder.size
    expect(result).to eq 6
  end

end