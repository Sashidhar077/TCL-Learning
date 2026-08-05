if {0} {
Objective

Write a Tcl program that stores an employee's basic information and displays it in a professional format.
Project Requirements

Create the following variables:

Variable	Value
employeeId	1001
firstName	Rahul
lastName	Sharma
designation	Physical Design Engineer
company	ABC Semiconductors
salary	50000
}

puts "============================="
puts "EMPLOYEE INFORMATION SYSTEM"
puts "============================="
set employeeId 1001
set firstName Rahul
set lastName Sharma
append firstName $lastName
set designation "Physical Design Engineer"
set company "ABC Semiconductors"
set salary 50000

puts "Employee ID : $employeeId"
puts "Name        : $firstName"
puts "Designation : $designation"
puts "Company     : $company"
puts "Salary      : $salary"
puts "Employee got salary hike"
set update_salary 55000
puts "Updated Salary : $update_salary"

puts "========================================"

incr employeeId
puts ""
puts " Next employee Id : $employeeId"
puts ""











