module Compare
  def self.same (guess, answer)
    i = 0
    count = 0
    while (i < 4)
      if (guess[i] == answer[i])
        count += 1
      end
      i += 1
    end
    count
  end
  # TODO: Fix the case when there are duplicates in the code
  def self.same_but_wrong_place(guess, answer)
    i = 0
    j = 0
    count = 0
    while (i < 4)
      while (j < 4)
        if (guess[i] == answer[j] && i != j )
          count += 1
        end
        j += 1
      end
      i += 1
      j = 0
    end
    count
  end
  def self.feedback (guess, answer)
    black_pins = self.same(guess, answer)
    white_pins = self.same_but_wrong_place(guess, answer)
    feedback = []
    black_pins.times do
      feedback.push("O")
    end
    white_pins.times do
      feedback.push("*")
    end
    if (feedback.length < 4)
      (4 - feedback.length).times do
        feedback.push(" ")
      end
    end
    feedback[0..3]
  end
end