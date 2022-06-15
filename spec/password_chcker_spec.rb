require "password_checker"

RSpec.describe PasswordChecker do

  it "returns true for valid password" do
    password_checker = PasswordChecker.new
    expect(password_checker.check("password")).to eq true
  end

  it "fails for invalid password" do
    password_checker = PasswordChecker.new
    expect { password_checker.check("hello") }.to raise_error "Invalid password, must be 8+ characters."
  end

  it "fails with empty string" do
    password_checker = PasswordChecker.new
    expect { password_checker.check("") }.to raise_error "Invalid password, must be 8+ characters."
  end

end