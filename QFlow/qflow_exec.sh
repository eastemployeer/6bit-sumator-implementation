#!/bin/tcsh -f
#-------------------------------------------
# qflow exec script for project ~/Desktop/Projekt/verilogproject-master/sumator
#-------------------------------------------

# /usr/local/share/qflow/scripts/yosys.sh ~/Desktop/Projekt/verilogproject-master/sumator adder ~/Desktop/Projekt/verilogproject-master/sumator/source/sumator.v || exit 1
# /usr/local/share/qflow/scripts/graywolf.sh -d ~/Desktop/Projekt/verilogproject-master/sumator adder || exit 1
# /usr/local/share/qflow/scripts/vesta.sh  ~/Desktop/Projekt/verilogproject-master/sumator adder || exit 1
# /usr/local/share/qflow/scripts/qrouter.sh ~/Desktop/Projekt/verilogproject-master/sumator adder || exit 1
# /usr/local/share/qflow/scripts/vesta.sh  -d ~/Desktop/Projekt/verilogproject-master/sumator adder || exit 1
# /usr/local/share/qflow/scripts/magic_db.sh ~/Desktop/Projekt/verilogproject-master/sumator adder || exit 1
# /usr/local/share/qflow/scripts/magic_drc.sh ~/Desktop/Projekt/verilogproject-master/sumator adder || exit 1
# /usr/local/share/qflow/scripts/netgen_lvs.sh ~/Desktop/Projekt/verilogproject-master/sumator adder || exit 1
# /usr/local/share/qflow/scripts/magic_gds.sh ~/Desktop/Projekt/verilogproject-master/sumator adder || exit 1
/usr/local/share/qflow/scripts/cleanup.sh ~/Desktop/Projekt/verilogproject-master/sumator adder || exit 1
# /usr/local/share/qflow/scripts/cleanup.sh -p ~/Desktop/Projekt/verilogproject-master/sumator adder || exit 1
# /usr/local/share/qflow/scripts/magic_view.sh ~/Desktop/Projekt/verilogproject-master/sumator adder || exit 1
