
# Simple Student Database
# Module 11 - Dictionaries


# Create empty database

set students [dict create]


# Add Student 101


dict set students 101 name Ravi
dict set students 101 age 22
dict set students 101 branch ECE
dict set students 101 marks 85



# Add Student 102

dict set students 102 name Anil
dict set students 102 age 21
dict set students 102 branch CSE
dict set students 102 marks 90


# Add Student 103

dict set students 103 name Suresh
dict set students 103 age 23
dict set students 103 branch EEE
dict set students 103 marks 78



# Display All Students



puts "       STUDENT DATABASE"


dict for {id details} $students {

    puts ""
    puts "Student ID: $id"
    puts "Name:       [dict get $details name]"
    puts "Age:        [dict get $details age]"
    puts "Branch:     [dict get $details branch]"
    puts "Marks:      [dict get $details marks]"
}



# Search for Student 102


puts ""

puts "=================SEARCH STUDENT================="


set search_id 102

if {[dict exists $students $search_id]} {

    puts "Student $search_id found!"
    puts "Name: [dict get $students $search_id name]"
    puts "Marks: [dict get $students $search_id marks]"

} else {

    puts "Student $search_id not found."
}



# Update Marks


puts ""

puts "===========UPDATE MARKS==============="


dict set students 102 marks 95

puts "Marks updated successfully."

puts "Student: [dict get $students 102 name]"
puts "New Marks: [dict get $students 102 marks]"


# Display Database Size


puts ""
puts "Total Students: [dict size $students]"