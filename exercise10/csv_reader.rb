require 'csv'
require_relative 'contact_manager'

class CsvReader

  attr_reader :contacts

  def initialize
    @contacts = []
  end


end

