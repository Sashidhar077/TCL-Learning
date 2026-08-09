if {0} {
Create the following array.

Key	Value
name	PrimeTime
company	Synopsys
version	R2025.06
license	Active

Print all keys and values using array names in alphabetical order of keys.
}

array set p {
    name	PrimeTime
    company	Synopsys
    version	R2025.06
    license	Active
}

 

foreach key [lsort [array names p]] {
    puts "$key : $p($key)"
}