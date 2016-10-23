# @param {String} secret
# @param {String} guess
# @return {String}
def get_hint(secret, guess)
  a = 0
  b = 0
  guess = guess.split ''
  unmatched = Hash.new(0)
  (secret.split '').each_with_index { |x, idx|
    if x == guess[idx]
      a += 1
      guess[idx] = 'x'
    else
      unmatched[x] += 1
    end
  }
  guess.each { |x|
    if x != 'x' && unmatched[x] > 0
      b += 1
      unmatched[x] -= 1
    end
  }
  "#{a}A#{b}B"
end