# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  if n == 0
    return 1
  end
  if n == 1
    return 1
  end

  table = Array.new(n)
  table[0] = 1
  table[1] = 1
  (2..n).each { |i|
    table[i] = table[i-1] + table[i-2]
  }
  return table[n]
end
