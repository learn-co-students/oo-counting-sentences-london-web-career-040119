require 'pry' # giving us access to pry to search

class String # creating a class called String

  def sentence? # this instanct method(due to self being in the method ) we want to check if a string ends in a sentecne
    self.end_with?(".") # we use the self method to refer to the sentence in which we are calling on and we use the .end_with? method to check if it wnds with and period and return true or false.
  end # end of sentence instance method

  def question? # this instance method should return true if the string ends with a question mark
     self.end_with?("?") # again using self to refer to the sentence we are calling on to check ends with ?
  end # end of question method

  def exclamation? # repeat from above examples but instead returning true for end with !
    self.end_with?("!") # ...
  end # end method

  def count_sentences # here we want to get back the side of how many sentecne we have in a string
    self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size # first we use the self keyword to refer to the string we are dealing with - next we use the .split method and give it the values of .?! to split up the sentences - this will give us a new array with each sentence in each index - then we want to delete any sentences from the array that have a size let than 2 since it probs isnt a real sentence and - finially use the .size to tell use the size of the array which indicates how many sentences there are.
  end # end of count_sentences instance method
end # end of String class 
