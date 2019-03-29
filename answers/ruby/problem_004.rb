#!/usr/bin/env ruby

# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

def reverse(str)
  new_str = []
  (str.length).downto(0) do |i|
    new_str << str[i]
  end
  new_str.join
end

def palindrome?(val)
  str = val.to_s
  # reversed = str.reverse
  reversed = reverse(str)
  return str == reversed ? true : false
end

largest_palindrome = 0

(100..999).each do |x|
  (100..999).each do |y|
    num = x * y
    if palindrome?(num) && num > largest_palindrome
      largest_palindrome = num
    end
  end
end

puts "Answer: #{largest_palindrome}"
