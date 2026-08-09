#special characers
if {0} {
| Symbol | Meaning                           |
| ------ | --------------------------------- |
| `.`    | Any single character              |
| `*`    | Zero or more occurrences          |
| `+`    | One or more occurrences           |
| `?`    | Zero or one occurrence (optional) |

}


if {0} {
Problem Statement

Write a Tcl program that checks whether the following strings match the pattern:

Path
P1th
P-th

using the regex:

P.th

Display whether each string matches.
}


set testStrings {
    Path
    P1th
    P-th
    Paath
}

foreach item $testStrings {

    if {[regexp {P.th} $item]} {

        puts "$item -> Match"
 
    } else {

        puts "$item -> No Match"

    }

}































































if {0} {

# dot (.) 

set line "Path"
if {[regexp {P.th} $line]} {
    puts "Matched"
}


#star (*)

set text "BBBBB"
regexp {A*} $text result
puts $result

#plus (+)

set text "AAAA"

regexp {A+} $text result

puts $result

# question mark (?)

set word "color"

regexp {colou?r} $word result

puts $result


}









