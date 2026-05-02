#!/usr/bin/env ruby
require "date"
require 'optparse'

today = Date.today
params = ARGV.getopts("", "year:#{today.year}", "month:#{today.month}")

year  = params["year"].to_i
month = params["month"].to_i
first_date    = Date.new(year, month, 1)
days_in_month = Date.new(year, month, -1).day

puts "#{year}年   #{month}月"
puts "日 月 火 水 木 金 土"
days = Array.new(first_date.wday, "  ") + (1..days_in_month).map { |d| d.to_s.rjust(2) }
days.each_slice(7) do |week|
  puts week.join(" ")
end

