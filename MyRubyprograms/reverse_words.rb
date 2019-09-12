def reverse_words(s)
  # ADD YOUR CODE HERE
  x=[]
  s.strip.reverse!.squeeze(" ").downcase.split.each do |word|
    vowel = word.reverse!.scan(/[aeiou]/)
    x.push(word.delete('aeiou') + vowel.join(''))
  end
  return x.join(' ')
end

p reverse_words("  hello     Design!!")
