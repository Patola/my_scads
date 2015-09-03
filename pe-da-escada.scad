$fn=200;
union() {
  translate([30,0,0]) cylinder(r1=26,r2=2,h=30);
  difference() {
    translate([0,0,-10]) rotate([0,20,0]) difference() {
      cylinder(r=17,h=100);
      translate([0,0,40]) cylinder(r=11.5,h=70); 
    } 
    translate([-50,-50,-30]) cube([100,100,30]);
  }
}