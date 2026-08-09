if {0} {
    Question

Create:

firstName = Rahul

lastName = Sharma

Use append to combine them into:

Rahul Sharma
}

set firstName Rahul
set lastName Sharma

append firstName $lastName  #append modifies the existing variable directly
puts "Full Name : $firstName" 