if {0} {
Create a Tcl script that reads configuration from environment variables:

PROJECT_NAME
DESIGN_NAME
REPORT_DIR

If any variable is missing, use a default value
}

if {[info exists env(PROJECT_NAME)]} {

    set project_name $env(PROJECT_NAME)

} else {

    set project_name "TCL_PROJECT"
}


if {[info exists env(DESIGN_NAME)]} {

    set design_name $env(DESIGN_NAME)

} else {

    set design_name "DEFAULT_DESIGN"
}


if {[info exists env(REPORT_DIR)]} {

    set report_dir $env(REPORT_DIR)

} else {

    set report_dir "./reports"
}


puts "================================="
puts "     PROJECT CONFIGURATION"
puts "================================="
puts "Project Name : $project_name"
puts "Design Name  : $design_name"
puts "Report Dir   : $report_dir"
puts "================================="




















