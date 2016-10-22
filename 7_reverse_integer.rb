# @param {Integer} x
# @return {Integer}
FIXNUM_MAX = (2**31 - 1)
FIXNUM_MIN = -(2**31 + 1)

def reverse(x)
  if x >= 0
    res = x.to_s.reverse.to_i
  else
    res = "-#{(x*-1).to_s.reverse}".to_i
  end
  return res >= FIXNUM_MAX || res <= FIXNUM_MIN ? 0 : res
end

