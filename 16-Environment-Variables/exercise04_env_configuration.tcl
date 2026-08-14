if {0} {
Write a Tcl program that:

Checks whether an environment variable called PROJECT_NAME exists.
If it exists, use its value as the project name.
If it does not exist, use "DEFAULT_PROJECT" as the project name.
Print the selected project name.
}

if {[info exists env(PROJECT_NAME)]} {

    set project_name $env(PROJECT_NAME)

} else {

    set project_name "DEFAULT_PROJECT"
}

puts "Project Name: $project_name"




