difference() {
  union() {
    cylinder(r=10,h=30,$fn=80);
    translate([0,4,0]) rotate([0,0,50]) cube([4,25,30]);
    translate([-20,-20,0]) rotate([0,0,-50]) cube([4,25,30]);
    translate([-19,-24,0]) cylinder(r=4,h=30,$fn=40);
    translate([-19,24,0]) cylinder(r=4,h=30,$fn=40); 
  }
  translate([0,0,-1]) cylinder(r=6,h=32,$fn=80);
  translate([20,0,0]) cube([40,4,80],center=true);
}
translate([0,-5,0]) cube([6,3,30]);
translate([0,2,0]) cube([6,3,30]);
