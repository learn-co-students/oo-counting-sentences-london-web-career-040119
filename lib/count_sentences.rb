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
    #This is checking if there is a . or ? or !, thus the end of a sentence
    #This would break when multiple of the above are in a row
    #So it will remove an element of a string if its size 0 which means its
    #Inbetween two of .?!
    self.split(/\.|\?|\!/).delete_if {|w| w.size == 0}.size
  end
end
