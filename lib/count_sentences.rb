require 'pry'

class String

  def sentence?
    if self.end_with?('.')
      true
    else
      false
    end
  end

  def question?
    if self.end_with?('?')
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?('!')
      true
    else
      false
    end
  end

  def count_sentences
    # if self.split(/[.?!]/).count === 0
    #   return 0
    # else
    #   return self.split(/[.?!]/).reject! { |s| s.empty? }.count
    # end
    self.split(/\? |\. |\! /).count
  end

end
