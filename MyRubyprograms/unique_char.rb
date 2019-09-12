def unique_char(s)
  # ADD YOUR CODE HERE
  s = s.chars
  h = s.each_with_object(Hash.new(0)) { |e,h| h[e] += 1 }
  h.reject!{|k,v| v > 1}
  if h.length > 0
    return s.index(h.first.first)
  else
    return -1
  end
end

p unique_char("redder")
