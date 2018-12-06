#!/usr/bin/env ruby

require 'maclight'
puts 'pray'
# Turn LEDs on
MacLight.all_leds(true)

sleep 2

# Turn LEDs off
MacLight.all_leds(false)
