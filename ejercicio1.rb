#!/usr/bin/env ruby
# coding: utf-8

#Si listamos todos los números naturales menores que 10 que son múltiplos de 3 o 5 obtenemos 3, 5, 6 y 9. La suma de todos estos números es 23. Encontrá la suma de todos los múltiplos de 3 o 5 menores que 1000.

#Resolucion con Range
def list_range(lower_bound=1, upper_bound = 1000)
   result = ((lower_bound...upper_bound).select { |n| n % 3 == 0 || n % 5 == 0 }).reduce(:+)
end

#Resolucion con Lambda
def list_lambda(lower_bound=1, upper_bound = 1000)
   multiple = ->(n){ n % 3 == 0 || n % 5 == 0 }
   result = (lower_bound...upper_bound).select(&multiple).inject(:+)
end

#Resolucion con Enumerator

def list_enumerator(lower_bound=1, upper_bound = 1000)
   naturals = Enumerator.new do |caller|
       i1 = lower_bound
       loop do
           caller.yield i1
           i1 += 1
       end
   end
   infinite_select(naturals) {|val| val % 3 == 0 || val % 5 == 0}.first(upper_bound)
end

def infinite_select(enum, &block)
    Enumerator.new do |caller|
        enum.each do |value|
            caller.yield(value) if block.call(value)
        end
    end
end

#p infinite_select(naturals) {|val| val % 3 == 0 || val % 5 == 0}.first(5)

