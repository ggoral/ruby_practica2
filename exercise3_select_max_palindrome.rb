#!/usr/bin/env ruby
# coding: utf-8

#Un número palíndromo se lee igual al derecho y al revés. El número palíndromo más grande obtenido de la multiplicación de dos números de 2 dígitos es 9009 (91 x 99 = 9009). Encontrá el palíndromo más grande obtenido a través de la multiplicación de dos números de 3 dígitos.

def is_palindrome? number
  number.to_s == number.to_s.reverse
end

my_enum = Enumerator.new do |caller|
  i1, i2 = 999 , 999
  loop do
    caller.yield i1 * i2
    i1 -= 1
    if i1 == 100
      i1 =  999
      i2 -= 1
    end
    break if i2 < 100
  end
end

def infinite_select(enum, &block)
  Enumerator.new do |caller|
    enum.each do |value|
      caller.yield(value) if block.call(value)
    end
  end
end

p infinite_select(my_enum) {|value| is_palindrome? value }.max
