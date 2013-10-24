#!/usr/bin/env ruby
# coding: utf-8

naturals = Enumerator.new do |caller|
    i1 = 0
    loop do
        caller.yield i1
        i1 += 1
    end
end

6.times { puts naturals.next }

def infinite_select(enum, &block)
    Enumerator.new do |caller|
        enum.each do |value|
            caller.yield(value) if block.call(value)
        end
    end
end

p infinite_select(naturals) {|val| val % 3 == 0 || val % 5 == 0}.first(5)
