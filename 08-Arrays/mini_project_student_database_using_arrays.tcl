if {0} {
Student Database Management System
Operations

1. Create Student Database
2. Display Student Details
3. Count Entries
4. Check Database
5. Update Marks
6. Add Phone Number
7. Delete Grade
}

#create studnet database
array set student {
    name Rahul
    rollNumber 23ECE101
    branch ECE
    marks 92
    grade A
}

#display student details
foreach key [lsort [array names student]] {
    puts [format "%-10s : %s" $key $student($key)]
}

puts ""
puts "--------------------------------------------------"
puts ""

#count entries
puts "\n Total entries  : [array size student] \n"

puts ""
puts "--------------------------------------------------"
puts ""

#check array
puts "Checking student database \n"

if {[array exists student]} {
    puts "Student Database Exists"
} else {
     puts "Student Database Not Exists"
}

puts ""
puts "--------------------------------------------------"
puts ""

#updating marks
puts "\n Updating marks \n"
set student(marks) 95
puts "Marks Updated Successfully"
puts ""
puts "--------------------------------------------------"
puts ""

# add new key
set student(phone) 1234567890

puts ""
#deleting grade
puts "Deleting Grade..."
unset student(grade)

puts ""
puts "--------------------------------------------------"
puts ""
puts ""

#Updated database
puts "=====================Updated Student Details========================"
foreach key [lsort [array names student]] {
    puts [format "%-10s : %s" $key $student($key)]
}
  
puts ""
puts "\n============Program completed==================\n"










