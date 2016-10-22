# @param {String} s
# @param {String} t
# @return {Character}
def find_the_difference(s, t)
  orig = Hash.new(0)
  (s.split '').each { |_|
    orig[_] += 1
  }

  (t.split '').each { |_|
    orig[_] -= 1
  }

  orig.each { |k, v|
    if v != 0
      return k
    end
  }
end