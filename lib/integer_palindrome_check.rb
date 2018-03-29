# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)
  return false if number == nil
  return true if number < 10 && number > -1
  return false if number < 0

  i = 1
  until number % (10 ** i) == number
    i += 1
  end

  i -= 1
  j = 1

  (i / 2).times do
    left = number / (10 ** i)
    until left < 10
      left %= 10
    end

    right = number % (10 ** j)
    until right < 10
      right /= 10
    end

    if left != right
      return false
    end
    i -= 1
    j += 1
  end
  return true
end
