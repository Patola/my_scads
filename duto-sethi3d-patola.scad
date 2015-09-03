difference() {
	translate([-99,-100,0]) import("/dados/maker/duto.stl");
	difference() {
		translate([0,0,-1]) cylinder(r1=16,r2=18,h=3);
		translate([0,0,-1]) cylinder(r=15,h=4);
	}

}
for (i=[45:90:315]) {
	rotate([0,0,i]) translate([14.5,0,0]) cube([3,1.5,1]);
}
