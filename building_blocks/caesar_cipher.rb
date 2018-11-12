def caesar_cipher(string, shift)
  cipher = ""
  string.split("").map{|x|
    x.each_char{|y|
      if (y.match(/[a-zA-Z]/))
        i = 0
        while i < shift
          y = (y.ord + 1).chr
          if (y == '{')
            y = 'a'
          end
          if (y == '[')
            y = 'A'
          end
          i = i + 1
        end
      end
      cipher += y
    }
  }
  return cipher
end
