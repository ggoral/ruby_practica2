#!/usr/bin/env ruby
# coding: utf-8

#require_relative 'csv_reader'


#reader = CsvReader.new
#ARGV.each do |csv_file_name|
#    STDERR.puts "Processing #{csv_file_name}"
#    reader.read_in_csv_data(csv_file_name)
#end
#puts "Total value = #{reader.total_value_in_stock}"

# server.rb
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
else
  STDOUT.puts <<-EOF
Please provide command name

Usage:
  contact_cli read -f filename.csv
  contact_cli write -f filename.csv
  contact_cli list
  server restart

  options:
    -f filename. Default: development
    -d dwDEAMON, true or false. Default: true
EOF
end
