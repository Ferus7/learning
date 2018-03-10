require 'byebug'

# Let's study nil?, empty?, blank?, present? and any? methods

# nil?
# This is simplest of methods, because it simply verify if something is nul, 
# where only nil is going to return true.

puts nil.nil?
puts 1.nil?
puts ''.nil?

# empty?
puts ''.empty?
puts [].empty?
puts {}.empty?
