// Baby bird feeding dish
// OhmEye

$facets=64;
$height=3;
$grid=5;
$gridrings=8;
$gridwall=.45;
$base=.8;

difference(){
union(){
	for ( i = [1:$gridrings] ) {
		difference(){
		translate([0,0,0])cylinder(r=i*$grid,h=$height,center=true,$fn=$facets);
		translate([0,0,0])cylinder(r=i*$grid-$gridwall,h=$height,center=true,$fn=$facets);
		}
	}
	translate([0,0,-$height/2-$base/2])cylinder(r=$grid*$gridrings,h=$base,center=true,$fn=$facets);
}
translate([$grid*$gridrings/2-$gridwall*2,0,0])cube([$grid*$gridrings,2,$height],center=true);
}