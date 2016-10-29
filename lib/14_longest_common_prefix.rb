# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  return '' if strs.length == 0
  longest = ''
  strs = strs.sort_by { |x| x.length }
  (1..strs[0].length).each { |x|
    cur_prefix = strs[0][0, x]
    if strs.all? { |e| e.start_with? cur_prefix }
      longest = cur_prefix
    end
  }
  longest
end