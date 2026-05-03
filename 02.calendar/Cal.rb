#!/usr/bin/env ruby
# frozen_string_literal: true

require 'date'
require 'optparse'

today = Date.today
params = ARGV.getopts('', "year:#{today.year}", "month:#{today.month}")

year  = params['year'].to_i
month = params['month'].to_i
first_date    = Date.new(year, month, 1)
days_in_month = Date.new(year, month, -1).day

month_name = first_date.strftime('%B') 
header = "#{month_name} #{year}"       
puts header.center(20)                
puts 'Su Mo Tu We Th Fr Sa'
days = Array.new(first_date.wday, '  ') + (1..days_in_month).map { |d| d.to_s.rjust(2) }
days.each_slice(7) do |week|
  puts week.join(' ')
end
