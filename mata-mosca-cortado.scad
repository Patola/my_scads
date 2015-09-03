include <patola-extrusado3.stl>

$fn=100;
difference() {
	difference() {
		union() {
			difference() {
				union() {
					cylinder(h=100,r=70);
					translate([0,52,40]) rotate([90,0,178]) patola(20);
				}
				translate([0,0,10]) cylinder(h=90,r=65);
			}
			translate([0,0,10]) cylinder(h=10,r1=40,r2=30.5);
		}
		translate([0,0,10]) cylinder(h=10,r=30.5);
		difference() {
			translate([0,0,95]) cylinder(h=5,r=70);
			translate([0,0,95]) cylinder(h=5,r=67);
		}
		for (angle=[0:30:330]) {
			rotate([0,0,angle]) translate([60,0,60]) cube([10,4,30]);
		}
	}
	translate([-100,-100,0]) cube([200,200,84.30]);
}