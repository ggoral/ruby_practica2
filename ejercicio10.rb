#!/usr/bin/env ruby
# coding: utf-8

require 'date'

class Contact
   attr_accessor :name, :birthday, :email, :phone, :address

   def initialize(name, birthday, email, phone, address)
      @name = name
      @birthday = Date.parse(birthday)
      @email = email
      @phone = phone
      @address = address
   end
   
   def to_s
      "name: #{@name}, birthday: #{@birthday}, email: #{@email}, phone: #{@phone}, address: #{@address}"
   end
end

