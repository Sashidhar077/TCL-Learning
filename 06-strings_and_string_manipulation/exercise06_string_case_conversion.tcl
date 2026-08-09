if {0} {
Create the following variable:

tool = PrimeTime

Display:

Original
Uppercase
Lowercase
Title Case
}

set tool "PrimeTime"
puts "Original  : $tool"
 
set a [string toupper $tool]
set b [string tolower $tool]
set c [string totitle $tool]

puts "Uppercase : $a"
puts "Lowercase : $b"
puts "Title Case: $c"







