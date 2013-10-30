#!/usr/bin/env ruby
# coding: utf-8

my_rgb = { red: 0, green: 128, blue: 255 }

def rgb_calc(a_rgb)
  red = a_rgb[:red]
  green = a_rgb[:green]*256
  blue = a_rgb[:blue]*65536
  red + green + blue
end

puts rgb_calc(my_rgb)

#coefficients = { red: 256**0, green: 256**1, blue: 256**2 }
coefficients = { red: 1, green: 256, blue: 65536 }

def rgb_calc_coef(a_rgb, other_rgb)
  red = a_rgb[:red] * other_rgb[:red]
  green = a_rgb[:green] * other_rgb[:green]
  blue = a_rgb[:blue] * other_rgb[:blue]
  red + green + blue
end

puts rgb_calc_coef(my_rgb,coefficients)

