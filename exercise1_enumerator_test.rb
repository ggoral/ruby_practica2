#!/usr/bin/env ruby
# coding: utf-8

require_relative 'ejercicio1.rb'
require 'test/unit'

class TestEjercicio1 < Test::Unit::TestCase

    def test_range_number
        assert_equal(23, list_range(1,10))
    end

    def test_lambda_number
        assert_equal(23, list_lambda(1,10))
    end

    def test_lambda_numbers
        assert_not_equal(23, list_lambda(1,1000))
    end
    
    def test_enumerator_numbers
        assert_equal(23, list_enumerator(1,10).select {|x| x < 10}.inject(:+))
    end

end

