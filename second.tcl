#!/usr/bin/tclsh
# set i 0;
# while {$i <100} {
#     incr i;
#     if {$i ==85} {
#         puts "Now $i is 85";
#         continue;
#     } elseif {$i ==90} {
#         puts "I am getting out of the loop at i =$i";
#         break;
#     } else {
#         puts "I am at count $i";
#     }
# }

# for {set i 20} {$i >0} {incr i -1} {
#     puts "iam at count $i and going up"
#     #delay
#     after 200 
#     update
# }
# for down counting down {incr i-1}/ for up incr i
#{incr i 5}

# set lstColors "red dark yellow";
# foreach col $lstColors {
#     puts $col;
#     after 200;
#     update;
# }

# foreach col {red dark yellow} {
#     puts $col;
#     after 200;
#     update;
# }

# same as for col in [red,dark,yellow] in python
#list can be list of nets in vlsi


# set tclfiles [glob *.tcl]
# foreach file $tclfiles {
#     puts "File = $file"
# }

# set lstColors {red orange yellow green blue purple};
# set lstFoods {apple orange banana lime berry grape};
# set status "ok bad ok ok bad bad"
# foreach {a b c} $lstColors {
#     puts "$c--$b--$a";
#     after 300;
#     update;
# }

# set no_of_edge 6
# switch $no_of_edge {
#     0 -
#     1 -
#     2 -
#     3 {puts "This is a triangle"}
#     4 {puts "This is a quad"}
#     5 {puts "This is a pentagon"}
#     default { puts "unknown"}
# }

# proc add {a b} {
#     return [expr $a + $b]
# }
# set sum [add 5 8]
# puts "$sum"; 

# proc sep {} {
#     puts "======================"
# }
# sep;

# set a 2
# set b 3
# set c 4
# puts "$a--$b--$c";
# proc var_scope {} {
#     global a
#     set a 20
#     set ::b 30
#     set c 100
# }
# var_scope;
# puts "$a--$b--$c"

## upvar -> call by refrence
proc set_pos {variable value} {
    upvar $variable myvar
    if {$value <0} {
        set myvar [expr {-$value}]
    } else {
        set myvar $value
    }
    return 1
}
set_pos y -15
puts "$y"