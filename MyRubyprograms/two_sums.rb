def two_sum(a,k)
  # ADD YOUR CODE HERE
  result = -1
  a.each_with_index do |num,idx|
      r = a[idx+1..a.length-1].map{|n| num + n if num + n < k}.compact
      if r.length > 0 && r.max > result
        result = r.max
      end
  end
  return result
end

puts two_sum([1,2,3,4],15)
