include <patola-extrusado3.stl>

$fn=100;
difference() {
	union() {
		cylinder(h=30,r=30);
		translate([-25,-25,30]) cube([50,50,15]);
	}
	translate([-25,-13,35]) cube([50,26,10]);
	translate([-25,-18,35]) cube([50,36,5]);
}