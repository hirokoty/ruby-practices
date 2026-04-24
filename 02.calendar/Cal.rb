#!/usr/bin/env ruby
require "date"
require 'optparse'

this_year  = Time.now.year
this_month = Time.now.month
params = ARGV.getopts("", "year:#{this_year}", "month:#{this_month}")
day_end = Date.new(params["year"].to_i, params["month"].to_i, -1).day
date_1st = Date.new(params["year"].to_i, params["month"].to_i, 1)

puts "#{params["year"]}年   #{params["month"]}月"
puts "日 月 火 水 木 金 土"
days = (["  "] * date_1st.wday) + (1..day_end).map { |d| d.to_s.rjust(2) }
days.each_slice(7) do |week|
  puts week.join(" ")
end
