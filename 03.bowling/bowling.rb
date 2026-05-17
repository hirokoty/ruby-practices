#!/usr/bin/env ruby
# frozen_string_literal: true

TOTAL_PINS = 10 # フレームの総ピン数

input = ARGV[0]
shots = input.split(',').map { |s| s == 'X' ? TOTAL_PINS : s.to_i }

scores = []
9.times do
  shot1 = shots.shift
  frame_score = if shot1 == TOTAL_PINS
                  TOTAL_PINS + shots[0] + shots[1]
                else
                  shot2 = shots.shift
                  frame_total = shot1 + shot2
                  if frame_total == TOTAL_PINS
                    TOTAL_PINS + shots[0]
                  else
                    frame_total
                  end
                end
  scores << frame_score
end
scores << shots.sum
puts scores.sum
