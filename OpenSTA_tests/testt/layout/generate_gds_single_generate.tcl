drc off
box 0 0 0 0
gds readonly true
gds rescale false
gds read /usr/local/share/qflow/tech/osu018/osu018_stdcells.gds2
load single_generate
select top cell
expand
cif *hier write disable
cif *array write disable
gds write single_generate
quit
