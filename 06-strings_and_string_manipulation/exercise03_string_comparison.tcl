if {0} {
Create two variables:

tool1 = PrimeTime
tool2 = primetime

Check:

Case-sensitive equality
Case-insensitive equality

Display  both results.
}

set tool1 PrimeTime
set tool2 primetime


set case_sensitive_equality [string equal $tool1 $tool2]
set case_insensitive_equality [string equal -nocase $tool1 $tool2] 


puts "case-sensitive-equality   : $case_sensitive_equality"
puts "case-insensitive-equality : $case_insensitive_equality"




