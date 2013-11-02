#!/usr/bin/env ruby
# coding: utf-8

require_relative 'exercise10_contact_manager.rb'
require 'minitest/autorun'

class TestEjercicio10 < Minitest::Test

   def test_creation_contact
     contact = Contact.new("Gonzalo","3-3-1983","goral.gonzalo@gmail.com","156002507","155 N° 1039")
     assert_equal("Gonzalo",contact.name)
   end

end

