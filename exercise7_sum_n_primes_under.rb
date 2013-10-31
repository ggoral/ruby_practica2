#!/usr/bin/env ruby
# coding: utf-8

#La suma de los primos menores que 10 es 17 (2 + 3 + 5 + 7 = 17). Encontrá la suma de todos los primos menores que 2 millones.

require 'prime'
#1.upto(10).select {|x| Prime.prime?(x)}.inject(:+)
sum = 0
Prime.instance.each do |prime|
  break if prime >=2_000_000
  sum += prime
end
puts sum
