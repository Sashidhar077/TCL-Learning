package ifneeded MyUtils 1.0 [list source [file join $dir MyUtils.tcl]]

package ifneeded Calculator 2.0 [list source [file join $dir calculator.tcl]]

package ifneeded Logger 1.0 [list source [file join $dir logger.tcl]]

package ifneeded greet 1.0 [list source [file join $dir greeting.tcl]]

package ifneeded StringUtils 1.0 [list source [file join $dir stringutils.tcl]]

package ifneeded StudentUtils 1.0 [list source [file join $dir StudentUtils.tcl]]

