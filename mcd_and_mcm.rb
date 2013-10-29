#!/usr/bin/env ruby
# coding: utf-8

def mcd(a,b)
  d = a.abs, b.abs 
  while d.min != 0
    d = d.min, d.max % d.min
  end
return d.max
end

#mcm(a,b)=(a·b)/mcd(a,b)

def mcm(a,b)
  (a*b) / mcd(a,b)
end

