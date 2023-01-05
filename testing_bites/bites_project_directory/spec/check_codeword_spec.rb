# specify the relevant code file to be used using require
require 'check_codeword'

# open test suite and use string to describe the unit of code we're testing
RSpec.describe "check_codeword method" do
  # create single test example and describe what the example is
  it "returns a correct message if given the right codeword" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end

  it "returns a close message if given a codeword that is close" do
    result = check_codeword("house")
    expect(result).to eq "Close, but nope."
  end
  
  it "returns a wrong message if given a wrong codeword" do
    result = check_codeword("baseball")
    expect(result).to eq "WRONG!"
  end
end