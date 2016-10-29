# @param {String} version1
# @param {String} version2
# @return {Integer}
def compare_version(version1, version2)
  version1 = version1.split('.')
  version2 = version2.split('.')

  (0..[version1.length, version2.length].min).each { |i|
    return 1 if version1[i].to_i > version2[i].to_i
    return -1 if version1[i].to_i < version2[i].to_i
  }
  if version1.length > version2.length
    return 0 if version1[version2.length..-1].all? { |e| e.to_i.zero? }
    return 1
  end
  if version2.length > version1.length
    return 0 if version2[version1.length..-1].all? { |e| e.to_i.zero? }
    return -1
  end
  0
end