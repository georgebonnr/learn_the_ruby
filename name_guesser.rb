# Rough outline of a program that, given a set of initials, iterates randomly through strings of letters 
# until it recreates those initials. Will (unrealistically) accept any number of initials, but anything 
#   over 4 characters usually takes it too long to solve to be practical. Just a little experiment.

name_arr = []
name_str = ''
print "What are your initials? "
correct_name = gets.chomp.upcase
print "Thanks! Let's see how long it takes me to randomly re-create your initials."
sleep 3

until name_str == correct_name
  letter_set = ('A'..'Z').to_a

  length = letter_set.length

  correct_name.length.times do |x|
    x = letter_set[rand(length)]
    name_arr << x
  end

  name_str = name_arr.join

  puts name_str

  name_arr.clear
end