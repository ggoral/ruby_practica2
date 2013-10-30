#!/usr/bin/env ruby
# coding: utf-8

#La suma de los primos menores que 10 es 17 (2 + 3 + 5 + 7 = 17). Encontrá la suma de todos los primos menores que 2 millones.

require 'prime'

primes = Prime.next
3.times {puts primes.next}
sum = 0
loop do
  sum += primes.next 
  break if sum >= 10
end
  
