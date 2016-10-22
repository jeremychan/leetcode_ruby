# @param {Integer} n
# @return {String}
def count_and_say(n)
  if n == 1
    return '1'
  end
  chars = count_and_say(n-1).to_s.split('')

  last = chars[0]
  count = 0
  res = ''
  # puts "CHARS: #{chars}"
  chars.each { |x|
    # puts "CHECK #{x}"
    if x != last
      res += count.to_s + last
      last = x
      count = 1
    else
      count += 1
    end
  }
  res += count.to_s + last
  return res
end
