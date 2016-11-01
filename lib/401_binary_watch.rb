# @param {Integer} num
# @return {String[]}
def read_binary_watch(num)
  res = Array.new
  (0..11).each { |h|
    (0..59).each { |m|
      hour_led = h.to_s(2).count('1')
      min_led = m.to_s(2).count('1')
      res.push "#{h}:#{m.to_s.rjust(2, '0')}" if hour_led + min_led == num
    }
  }
  res
end