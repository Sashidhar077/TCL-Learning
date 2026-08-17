if {0} {
Create:

A global variable counter
A procedure increment
The procedure increases counter by 1
Call it three times
Display the final value
}

set counter 0

proc increment {} {
    global counter
    incr counter
}

increment
increment
increment

puts "Counter : $counter"

















