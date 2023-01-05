require 'string_builder'

describe StringBuilder do
  it "returns an empty string upon initialisation" do
    new_string = StringBuilder.new
    result = new_string.output
    expect(result).to eq ""
  end

  it "returns 0 for length of newly initialised string" do
    new_string = StringBuilder.new
    result = new_string.size
    expect(result).to eq 0
  end

  it "modifies string correctly when add method is called" do
    new_string = StringBuilder.new
    new_string.add("hello")
    expect(new_string.output).to eq "hello"
  end

  it "returns correct length for modified string" do
    new_string = StringBuilder.new
    new_string.add("hello")
    expect(new_string.size).to eq 5
  end
  
  it "modifies string correctly when add called multiple times" do
    new_string = StringBuilder.new
    new_string.add("hello, ")
    new_string.add("how are you?")
    expect(new_string.output).to eq "hello, how are you?"
  end

  it "returns correct length when add called multiple times" do
    new_string = StringBuilder.new
    new_string.add("hello, ")
    new_string.add("how are you?")
    expect(new_string.size).to eq 19
  end

end