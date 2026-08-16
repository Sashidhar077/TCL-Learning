if {0} {
The program should:

Accept multiple filenames from the command line.
Check whether each file exists.
Open each file.
Count the number of lines.
Display the filename and line count.
}

if {$argc < 1} {
   puts "Usage: tclsh exercise01_multiple_files.tcl <file1> <file2> ..."
    exit 1
}

foreach filename $argv {

    if {![file exists $filename]} {
        puts "$filename : not found"
        continue
    }

    set fp [open $filename r]
    set line_count 0
    while {[gets $fp line] >=0} { 
        incr line_count
    }    
    
    close $fp

    puts "$filename : $line_count lines"



}










