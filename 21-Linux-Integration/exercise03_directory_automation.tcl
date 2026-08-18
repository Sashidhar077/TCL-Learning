if {0} {
Create a Tcl script that:

Checks whether a directory called reports exists.
If it does not exist, create it.
Print the final status.
}

set report_dir "reports"


if {[file isdirectory $report_dir]} {

    puts "Reports directory already exists."

} else {

    puts "Reports directory does not exist."
    puts "Creating reports directory..."

    file mkdir $report_dir

    puts "Reports directory created."
}



















