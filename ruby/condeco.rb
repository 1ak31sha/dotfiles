#!/usr/bin/env ruby

require 'date'

def parse_date(str)
  Date.strptime(str.to_s.strip, '%Y-%m-%d')
end

def weekdays(start_date, end_date)
  (start_date..end_date)
    .select { |date| date.wday >= 1 && date.wday <= 5 }
    .map { |date| date.strftime('%-d/%-m/%Y') }
    .map { |weekday| "#{weekday}_0;#{weekday}_1" }
    .join(';')
end

start_date = parse_date(ARGV[0])
end_date = parse_date(ARGV[1])

puts weekdays(start_date, end_date)
