# ORIGINAL INSTRUCTIONS: Given a string, write a program to reverse the word order (rather than character order).
# The String and Array classes provide methods which will be very helpful for solving this exercise.

# I modified this to keep the punctuation in place in the sentence to make it more readable / interesting.  Plan on refactoring later.

puts "Please enter a sentence."
user_input = gets.chomp

array = user_input.downcase.split(' ')

punct_indices = {}

array.each do |x|
  contains_punct = /[[:punct:]&&[^']]/ =~ x
  if contains_punct
    punct_indices[array.index(x)] = x[contains_punct]
    y = x.sub(/[[:punct:]]/, '')
    array[array.index(x)] = y
  end
end

reversed = array.reverse

if !punct_indices.empty?
  punct_indices.each {|key, value| reversed[key] << value }
end

reversed[0].capitalize!

print reversed.join(' ')
puts