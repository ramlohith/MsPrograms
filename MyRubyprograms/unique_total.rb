def unique_total(a)
  # ADD YOUR CODE HERE
  x = Hash.new(0)
  #x = a.drop_while{|i| a.count(i) > 1}
  a.uniq.each do |v|
    x[v] = a.count(v)
  end
  if x.map{|key,value| key if value == 1}.compact.inject(:+).nil?
    return 0
  else
    return x.map{|key,value| key if value == 1}.compact.inject(:+)
  end
end

p unique_total([1,1,2,2])
