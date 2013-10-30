#!/usr/bin/env ruby
# coding: utf-8

#6aLa lista de .os primeros 6 números primos es 2, 3, 5, 7, 11 y 13. Se puede observar que el 6to número primo es 13. ¿Cual es el número primo nro 10001?
require 'prime'

class Integer < Numeric
    def is_prime?
        return false if self <= 1
        2.upto(Math.sqrt(self).to_i) do |x|
            return false if self%x == 0
        end 
        true
    end 

    def next_prime
        n = self+1
        n = n + 1 until n.is_prime?
        n   
	end 
end
e = Enumerator.new do |y|
    n = 2
    loop do
        y << n
        n = n.next_prime
    end
end

prime = e.first(10001).last
p prime

prime = Prime.first(10001).last
p prime
