require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    if sentence? || question? || exclamation?
    test = self.split(" ")
    test.select { |e| e.sentence? || e.question? || e.exclamation? }.length
    else
     0
    end
  end

end
