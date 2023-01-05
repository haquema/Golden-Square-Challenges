class GrammarStats
  def initialize
    @check_count = 0
    @pass_count = 0
  end
    
  def check(text)
    fail "You passed an empty string" if text == ""
    fail "The argument for check method must be a string!" unless text.is_a? String
    @check_count += 1
    # p "check count is currently at #{@check_count}"
    if verify_capitalisation(text) && verify_end_punctuatin(text)
      @pass_count += 1
      # p "pass count is currently at #{@pass_count}"
      true
    else
      false
    end
  end

  # Returns as an integer the percentage of texts checked so far that passed
  # the check defined in the `check` method. The number 55 represents 55%.
  def percentage_good
    fail "You need to run check at least once first" if @check_count == 0
    p @pass_count
    p @check_count
    ((@pass_count/@check_count) * 100)
  end

  private 

  def verify_capitalisation(str)
    first_letter = str[0]
    return first_letter == first_letter.upcase
  end

  def verify_end_punctuatin(str)
    punctuation = ["!", ".", "?"]
    return punctuation.include? str[-1]
  end

  private 

end

stats = GrammarStats.new
stats.check("Hello, My name is Aziz")
stats.check("Hello, My name is Aziz")
stats.check("Hello, My name is Aziz")
stats.check("Hello, My name is Aziz?")
p "---------------"
stats.percentage_good