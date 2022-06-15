require "check_codeword"

RSpec.describe "check_codeword" do
  
  it "Passes 'horse' to check_codeword to return 'Correct! Come in.'" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end

  it "Passes 'house' to check_codeword to return 'Close, but nope.'" do
    result = check_codeword("house")
    expect(result).to eq "Close, but nope."
  end

  it "Passes 'cow' to check_password to return 'WRONG!'" do
    result = check_codeword("cow")
    expect(result).to eq "WRONG!"
  end

end