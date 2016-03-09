include <lib/polyScrewThread.scad>
    
PI=3.141592;
difference() {
  union() {
    cylinder(r=20,h=17.10,$fn=100);
    translate([0,0,11]) cylinder(r1=23,r2=20,h=6.10,$fn=100); 
    cylinder(r=24,h=11,$fn=100);
    for (i=[-10,50,110,170,230,290,350]) {
      rotate([0,0,i]) translate([15,-16,0]) minkowski() {
        linear_extrude(height=1) polygon(points=[[0,0],[10,0],[5,8.65]]);
        cylinder(r=5,h=8,$fn=40);
      }
    }
  }
  union() {
    intersection() {
      translate([0,0,0]) mirror([-1,0,0]) screw_thread(30.6,5.7,36,22.8,PI/2,0);
      cylinder(r=13.3,h=27);
    }
    cylinder(r=12.3,h=28);
  }
}