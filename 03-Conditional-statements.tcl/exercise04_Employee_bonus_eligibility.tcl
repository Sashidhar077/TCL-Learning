if {0} {
    Exercise 4 – Employee Bonus Eligibility
Question

An employee receives a bonus only if:

Experience ≥ 5 years
Performance Rating ≥ 4
 
Use:

set experience 6
set rating 5

Print:

Employee Experience : 6 Years
Performance Rating  : 5

Eligible for Bonus
}


set experience 6
set rating 5

puts "Employee experience : $experience"
puts "Performance rating  : $rating"
puts ""
if {$experience>=5} {
    if {$rating>=4} {
        puts "Eligible for bonus"
    } else {
        puts "Performance rating is low"
    }
} else {
    puts "Experience is low"
}


