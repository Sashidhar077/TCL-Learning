if {0} {
    Exercise 5 – Loan Eligibility Checker
Problem Statement

A bank approves a loan only if:

Salary ≥ 50000
Credit Score ≥ 750

Create the following variables:
 
set salary 60000
set creditScore 780

Print:

Salary       : 60000
Credit Score : 780

Loan Approved
}

set salary 50000
set creditScore 750
puts "Salary       : $salary"
puts "Credit Score : $creditScore"

if {$salary>=50000 && $creditScore>=750} {
   puts "Loan Approved"
} else {
    puts "Loan rejected"
}













