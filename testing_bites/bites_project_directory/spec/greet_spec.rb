require 'greet' # require the file with the the code that we are checking

RSpec.describe "greet method" do 
# set up a test suite 
# the string above descrives the unit of code we are testing

  # create a single text example
  # string here to describe what the example is
  it "greets Aziz" do
    # run the method with example argument Aziz
    result = greet("Aziz")

    # provide the expected result
    expect(result).to eq "Hello, Aziz!"

  end
end