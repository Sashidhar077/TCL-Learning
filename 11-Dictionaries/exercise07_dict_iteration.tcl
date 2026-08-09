if {0} {
Create a Tcl dictionary named employee containing:

name       → Ravi
id         → 101
age        → 22
department → ASIC
salary     → 50000

Then use dict for to:

Iterate through every key-value pair.

Print each pair in the format:

key = value
Count how many entries are present.
Print the total number of entries after the loop.
}


set employee [dict create \
name        Ravi \
id          101 \
age         22 \
department  VLSI \
salary      50000
]

dict for {key value} $employee {
    puts "$key = $value"
}

puts "\n Total entries : [dict size $employee] \n"


































