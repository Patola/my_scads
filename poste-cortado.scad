$fn=100;
translate([0,0,-33.6]) difference() {
	union() {
		difference() {
			cylinder(h=100,r=20);
			translate([0,0,10]) cylinder(h=91,r=12.85);
		}
		cylinder(h=100,r=10.0);
		difference() {
			for (i=[0:90:360]) {
				rotate([0,0,i]) union() {
					translate([0,-10,0]) cube([80,20,10]);
					translate([80,10,0]) rotate([90,0,0]) linear_extrude(height=20) polygon([[0,0],[10,0],[0,10]]);
					translate([60,0,0]) rotate([0,-45,0]) translate([0,-10,0]) cube([14,20,100]);
				}
			}
			cylinder(h=100,r=20);
		}

		translate([0,0,100]) rotate_extrude(convexity=10) translate([16.4,0,0]) circle(r=3.6);
		translate([0,0,100]) scale([1,1,.5]) sphere(r=10);
	}
	translate([-100,-100,0]) cube([200,200,33.6]);
}