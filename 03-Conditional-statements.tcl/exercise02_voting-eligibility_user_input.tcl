# Voting Eligibility (User Input)

puts -nonewline "Enter your age : "
flush stdout

gets stdin age

puts ""
if {$age >=18} {
    puts "Eligible for voting"
}  else {
    puts " Not eligible for voting"
}
 














