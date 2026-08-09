set line "Slack = -0.25"

regexp {(-?\d+\.\d+)} $line match slack

puts "Match : $match" 
puts "Slack : $slack"