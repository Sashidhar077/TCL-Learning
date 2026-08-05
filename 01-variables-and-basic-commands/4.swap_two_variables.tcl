if {0} {
Question

Create:

a = 10
b = 20

Swap their values using a temporary variable
}

set a 10
set b 20

puts "Before swap"
puts "a = $a"
puts "b = $b"


set temp $a
set a $b
set b $temp

puts ""
puts "After swap"

puts "a = $a"
puts "b = $b"