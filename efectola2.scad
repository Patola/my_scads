//translate([20,0,0]) cube([10,10,60]);
//translate([30,0,0]) cube([10,10,40]);

difference() {
  import ("effectola.stl");
  translate([51,10,33]) rotate([0,-45,0]) cube([20,40,5]);
}
//translate([54,6,36]) rotate([0,-45,0]) cube([10,40,5]);

module blower() {
// Level of detail
detail=200; // [20:draft, 50:moderate, 200:final]
// Diameter of nozzle opening in mm
opening=5; // [4:14]
// Angle of nozzle opening relative to the fan opening
angle=-30; // [0:60]
// Angle of fan relative to support triangle
fanangle=50; // [0:90]
// Nozzle length (keep it short lest it will touch the heated bed)
nozzlelength=15.5; // [20:40]
// I dunno
slant=13; // [-20:40]


$fn=detail;
translate([-15,48,40]) mirror([0,0,1]) rotate([270,-10,0]) union() {

translate([58,-48,18]) rotate([0,90,0]) difference() {
        translate([20,50,0]) rotate([fanangle,0,0]) union() {
                difference () {
                        translate([0,1,0]) cube([40,47,5.6]);
                        translate([20,28,-.2]) cylinder(r=18,h=6);
                        translate([4,12,-.2]) cylinder(r=1.2,h=6);
                        translate([36,12,-.2]) cylinder(r=1.2,h=6);
                        translate([36,44,-.2]) cylinder(r=1.2,h=6);
                        translate([4,44,-.2]) cylinder(r=1.2,h=6);
                }

                // cone for restricting air flow
                translate([20,28,0]) mirror([0,0,-1]) difference() {
                        // I am using hull() here to slant the cone if
                        // needed. For that, just change the "y" value
                        // in the second term of hull, e.g.
                        // translate([0,8,20]) will shift the center
                        // 8 mm downward.
                        hull() {
                                cylinder(r=20,h=0.01);
                                translate([0,-slant,nozzlelength]) rotate([-angle,0,0]) cylinder(r=opening+2,h=0.01);
                        }
                        translate([0,0,-0.1]) hull() {
                                cylinder(r=18,h=0.01);
                                translate([0,-slant,nozzlelength+0.2]) rotate([-angle,0,0]) cylinder(r=opening,h=0.01);
                        }
                }
        }
        translate([100,100,-10]) cube([100,100,10]);
}
}
}

blower();