if {0} {
Create the following array.

Key	Value
name	PrimeTime
company	Synopsys
version	R2025.06
license	Active

Perform the following operations:

Display the array
Remove the license key
Display the updated array
Delete the complete array
Check whether the array still exists
}

array set p {
    name	PrimeTime
    company	Synopsys
    version	R2025.06
    license	Active
}
puts "\n========Origianal array=============\n"
foreach key [lsort [array names p]] {
    puts "$key : $p($key)"
}
puts "\n Removing license.......\n"
unset p(license)
puts "\n===================Updated array================\n"

foreach key [lsort [array names p]] {
    puts "$key : $p($key)"
}
puts "\n Deleting Entire Array.....\n"

array unset p
if {[array exists p]==0} {
    puts "Entire array is deleted"
} else {
    puts "Entire array is not deleted"
}

























