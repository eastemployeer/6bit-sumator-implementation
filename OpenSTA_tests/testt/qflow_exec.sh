#!/bin/tcsh -f
#-------------------------------------------
# qflow exec script for project ~/testt
#-------------------------------------------

# /usr/local/share/qflow/scripts/yosys.sh ~/testt adder ~/testt/source/sumator.v || exit 1
# /usr/local/share/qflow/scripts/graywolf.sh -d ~/testt adder || exit 1
# /usr/local/share/qflow/scripts/opensta.sh  ~/testt adder || exit 1
# /usr/local/share/qflow/scripts/qrouter.sh ~/testt adder || exit 1
# /usr/local/share/qflow/scripts/opensta.sh  -d ~/testt adder || exit 1
# /usr/local/share/qflow/scripts/magic_db.sh ~/testt adder || exit 1
# /usr/local/share/qflow/scripts/magic_drc.sh ~/testt adder || exit 1
# /usr/local/share/qflow/scripts/netgen_lvs.sh ~/testt adder || exit 1
# /usr/local/share/qflow/scripts/magic_gds.sh ~/testt adder || exit 1
/usr/local/share/qflow/scripts/cleanup.sh ~/testt adder || exit 1
# /usr/local/share/qflow/scripts/cleanup.sh -p ~/testt adder || exit 1
# /usr/local/share/qflow/scripts/magic_view.sh ~/testt adder || exit 1
