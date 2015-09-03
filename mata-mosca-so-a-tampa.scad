include <patola-extrusado3.stl>

$fn=100;

mirror([0,0,-1]) translate([0,0,-15]) {
   difference() {
		cylinder(h=15,r=70);
		cylinder(h=5,r=68);
	}
	cylinder(h=5,r=64);
	translate([0,0,-10]) cylinder(r1=5,r2=64,h=10);
}