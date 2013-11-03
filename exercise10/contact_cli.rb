#!/usr/bin/env ruby
# coding: utf-8

require_relative 'contact_manager'

cm = Contact_manager.new

def parse_options
  options = {}
  case ARGV[1]
  when "-f"
    options[:f] = ARGV[2]
  when "-d"
    options[:d] = ARGV[2]
  end
  options
end

case ARGV[0]
when "read"
  STDOUT.puts "read from file on #{parse_options.inspect}"
when "write"
  STDOUT.puts "write a file on #{parse_options.inspect}"
when "list"
  STDOUT.puts "restart on #{parse_options.inspect}"
  if parse_options[:f]
    cm.read_in_csv_data(parse_options[:f])
  else 
    cm.read_in_csv_data("data_read.csv")
  end
  puts cm
else
  STDOUT.puts <<-EOF
Please provide command name

Usage:
  contact_cli add      #add a contact
  contact_cli del      #delete a contact, puts
  contact_cli list     #list contacts

  options:
    -f filename. Default: contact_manager.csv
EOF
end
