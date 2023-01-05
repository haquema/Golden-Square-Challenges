require 'password_checker'

describe PasswordChecker do
  it "Accepts a password greater than 8 characters" do
    password_checker = PasswordChecker.new
    result = password_checker.check("Passwordmorethan8")
    expect(result).to eq true
  end

  it "Accepts a password with 8 characters" do
    password_checker = PasswordChecker.new
    result = password_checker.check("Password")
    expect(result).to eq true
  end

  it "Fails a password with less than 8 characters" do
    password_checker = PasswordChecker.new
    expect { password_checker.check("Pass") }.to raise_error "Invalid password, must be 8+ characters."
  end

end
