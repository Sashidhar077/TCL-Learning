if {0} {
Given

Path1 -0.25 FAIL

Replace

FAIL

with

PASS

Display both:

Original string
Modified string
}

set line "Path1 -0.25 FAIL"

regsub {FAIL} $line PASS result

puts "Original : $line \n"
puts "Modified : $result"























