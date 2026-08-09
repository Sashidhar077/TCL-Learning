if {0} {
Create the following variable:

filename = timing_report.rpt

Perform the following:

Print the first character.
Print the last character.
Extract "timing".
Extract "report.rpt".
}
 

set r "timing_report.rpt"
puts "Filename  : $r"
puts "First character: [string index $r 0]"
puts "Last character : [string index $r end]"
set a [string range $r 0 5]
set b [string range $r 7 end]
puts "First word     : $a"
puts "Remaining word : $b







