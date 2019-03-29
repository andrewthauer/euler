#!/usr/bin/env ruby

# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

def prime?(num)
  return false if num <= 1
  for i in (2..num - 1)
    return false if num.to_f % i == 0
  end
  true
end

def factor?(num)
  false
end

def largest_factor(num)
  num
end

factors = []

# 600_851_475_143
(1..11).each do |i|
  factors << i if prime? i && largest_factor(i)
end

puts "Answer: #{factors}"
