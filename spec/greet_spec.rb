require "greet"

RSpec.describe "greeter" do

  it "passes 'Ollie' to greeter to return 'Hello, Ollie!'" do
    result = greet("Ollie")
    expect(result).to eq "Hello, Ollie!"
  end

end