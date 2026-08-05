if {0} {
Manage a small EDA tool database.

Operations

1. Display Database
2. Count Tools
3. Search Tool
4. Add Tool
5. Sort Tool Names
}

set tool {
    {PrimeTime Synopsys}
    {ICC2 Synopsys}
    {Innovus Cadence}
    {Genus Cadence}
}

#display
puts "========EDA tool database========\n"
foreach a $tool {
    puts "Tool      : [lindex $a 0]"
    puts "Company   : [lindex $a 1] \n"
    puts ""
}

#count tools
set count [llength $tool]
puts "Total tools : $count \n"

#search tool
puts "\n Searching Innovus \n"


set found 0

foreach toolInfo $tool {

    if {[lindex $toolInfo 0] == "Innovus"} {

        puts "Found"
        puts ""
        set found 1
        break
    }

}

if {!$found} {
    puts "Tool Not Found \n"
}

# add new tool
puts "adding tools"
lappend tool {FusionCompiler Synopsys}
puts "FusionCompiler Synopsys"

puts  " $tool \n "


set toolNames {}

foreach toolInfo $tool {

    lappend toolNames [lindex $toolInfo 0]

}

puts "Sorted Tool List"
puts ""

foreach tool [lsort $toolNames] {

    puts $tool

}

puts ""

puts "=================Program Completed==================="



