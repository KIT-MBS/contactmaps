mol new ../../RNA_Testset/PDB/4frg.pdb
mol addrep top

display cuemode Exp2
display cuedensity 0.18
display ambientocclusion on
display aoambient 0.75
display aodirect 0.75
display shadows on
display depthcue off

mol modcolor 0 top Chain
mol modcolor 1 top Chain
material change specular Ghost 0.050000
mol modmaterial 1 top AOChalky
mol modmaterial 0 top AOChalky
mol modselect 0 top not backbone
mol modstyle 0 top NewCartoon 0.400000 10.000000 4.100000 0
mol modstyle 1 top Tube 2.300000 12.000000

graphics top materials on
graphics top material AOChalky
axes location Off

color change rgb 0 0.01 0.24 0.42; #juelich blue
color change rgb 4 0.98 0.92 0.35; #juelich yellow
color change rgb 1 0.92 0.37 0.45; #juelich red
color change rgb 7 0.73 0.82 0.37; #juelich green
color change rgb 23 0.68 0.74 0.89; #juelich blue2
color change rgb 2 0.92 0.92 0.92; #juelich gray
color change rgb 19 0 1 0; #green2
color change rgb 29 1 0 0; #red2
color change rgb 25 0.69 0.51 0.73; #juelich violet
color Resname G blue
color Resname U red
color Resname C green
color Resname A yellow
color Chain A blue

proc geom_center {selection} {
    set gc [veczero]
    foreach coord [$selection get {x y z}] {
        set gc [vecadd $gc $coord]
    }
    return [vecscale [expr 1.0 /[$selection num]] $gc]
}
lassign [[atomselect top "resid 14 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 77 and name N1"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 14 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 78 and name N1"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 14 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 79 and name N9"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 15 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 78 and name N1"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 15 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 77 and name N1"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 15 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 76 and name N1"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 16 and name N1"] get {x y z}] coord1 
lassign [[atomselect top "resid 75 and name N9"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 16 and name N1"] get {x y z}] coord1 
lassign [[atomselect top "resid 76 and name N1"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 16 and name N1"] get {x y z}] coord1 
lassign [[atomselect top "resid 77 and name N1"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 17 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 76 and name N1"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 17 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 75 and name N9"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 17 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 74 and name N1"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 18 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 73 and name N1"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 18 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 74 and name N1"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 18 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 75 and name N9"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 19 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 74 and name N1"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 19 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 73 and name N1"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 20 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 73 and name N1"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 1 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 83 and name N1"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 2 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 82 and name N1"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 2 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 83 and name N1"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 3 and name N1"] get {x y z}] coord1 
lassign [[atomselect top "resid 82 and name N1"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 3 and name N1"] get {x y z}] coord1 
lassign [[atomselect top "resid 81 and name N9"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 4 and name N1"] get {x y z}] coord1 
lassign [[atomselect top "resid 80 and name N9"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 4 and name N1"] get {x y z}] coord1 
lassign [[atomselect top "resid 81 and name N9"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 4 and name N1"] get {x y z}] coord1 
lassign [[atomselect top "resid 82 and name N1"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 3 and name N1"] get {x y z}] coord1 
lassign [[atomselect top "resid 83 and name N1"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 5 and name N1"] get {x y z}] coord1 
lassign [[atomselect top "resid 81 and name N9"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 5 and name N1"] get {x y z}] coord1 
lassign [[atomselect top "resid 80 and name N9"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 5 and name N1"] get {x y z}] coord1 
lassign [[atomselect top "resid 79 and name N9"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 6 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 78 and name N1"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 6 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 79 and name N9"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 6 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 80 and name N9"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 27 and name N1"] get {x y z}] coord1 
lassign [[atomselect top "resid 37 and name N9"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 26 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 39 and name N1"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 25 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 40 and name N1"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 25 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 41 and name N9"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 28 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 36 and name N1"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 28 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 38 and name N1"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 25 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 39 and name N1"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 27 and name N1"] get {x y z}] coord1 
lassign [[atomselect top "resid 39 and name N1"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 27 and name N1"] get {x y z}] coord1 
lassign [[atomselect top "resid 38 and name N1"] get {x y z}] coord2 
draw color red
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 5 and name N1"] get {x y z}] coord1 
lassign [[atomselect top "resid 79 and name N9"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 22 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 65 and name N1"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 36 and name N1"] get {x y z}] coord1 
lassign [[atomselect top "resid 61 and name N9"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 25 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 40 and name N1"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 33 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 36 and name N1"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 29 and name N1"] get {x y z}] coord1 
lassign [[atomselect top "resid 33 and name N9"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 34 and name N1"] get {x y z}] coord1 
lassign [[atomselect top "resid 63 and name N9"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 11 and name N1"] get {x y z}] coord1 
lassign [[atomselect top "resid 72 and name N9"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 20 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 73 and name N1"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 15 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 78 and name N1"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 59 and name N1"] get {x y z}] coord1 
lassign [[atomselect top "resid 66 and name N1"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 5 and name N1"] get {x y z}] coord1 
lassign [[atomselect top "resid 14 and name N9"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 53 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 64 and name N1"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 43 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 54 and name N1"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 10 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 13 and name N1"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 47 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 50 and name N9"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 22 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 44 and name N1"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 34 and name N1"] get {x y z}] coord1 
lassign [[atomselect top "resid 66 and name N1"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 5 and name N1"] get {x y z}] coord1 
lassign [[atomselect top "resid 81 and name N9"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 43 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 65 and name N1"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 23 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 65 and name N1"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 20 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 70 and name N9"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 22 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 42 and name N9"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 14 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 79 and name N9"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 32 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 60 and name N1"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 28 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 38 and name N1"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 25 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 34 and name N1"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 58 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 68 and name N9"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 18 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 73 and name N1"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 1 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 83 and name N1"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 57 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 69 and name N9"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 29 and name N1"] get {x y z}] coord1 
lassign [[atomselect top "resid 37 and name N9"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 56 and name N1"] get {x y z}] coord1 
lassign [[atomselect top "resid 70 and name N9"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 33 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 61 and name N9"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 54 and name N1"] get {x y z}] coord1 
lassign [[atomselect top "resid 64 and name N1"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 36 and name N1"] get {x y z}] coord1 
lassign [[atomselect top "resid 62 and name N1"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 63 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 66 and name N1"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 26 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 38 and name N1"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 27 and name N1"] get {x y z}] coord1 
lassign [[atomselect top "resid 38 and name N1"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 63 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 67 and name N1"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 59 and name N1"] get {x y z}] coord1 
lassign [[atomselect top "resid 63 and name N9"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
lassign [[atomselect top "resid 18 and name N9"] get {x y z}] coord1 
lassign [[atomselect top "resid 75 and name N9"] get {x y z}] coord2 
draw color green
draw cylinder $coord1 $coord2 radius 0.6 filled yes
