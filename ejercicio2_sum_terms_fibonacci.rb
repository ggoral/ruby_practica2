#!/usr/bin/env ruby
# coding: utf-8

fibonacci = Enumerator.new do |caller|
    i1, i2 = 1, 1
    loop do
        caller.yield i1
        i1, i2 = i2, i1+i2
    end
end

sum = 0
16.times do
  sum += fibonacci.next 
  puts fibonacci.next
end

puts sum
# TODO hacer un enumerator que me de los terminos pares de fibonacci
 
