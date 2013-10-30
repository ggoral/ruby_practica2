#!/usr/bin/env ruby
# coding: utf-8

#2520 es el número más chico que puede ser dividido por cada uno de los números del 1 al 10 sin obtener resto. ¿Cual es el número más chico que puede ser dividido por cada uno de los números del 1 al 20?
#lower_bound = 10
#1.upto(lower_bound) do |i|
#  square += i*i
#  sum += i
#  end

result = 0
square = 0
sum = 0
1.upto(100) do |value|
  sum += value
  square += value**2
end
result = (sum**2) - square
puts result



