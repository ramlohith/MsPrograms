def sorted_squares(a)
  # ADD YOUR CODE HERE
  a.map!{|x| x ** 2}.compact
  return a.sort
end

r = [-7,-3,2,3,11]
puts sorted_squares(r)
