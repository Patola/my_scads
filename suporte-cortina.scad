difference() {
  union() {
  cylinder(r=25,h=20,$fn=200);
  translate([-40,-15,-10]) rotate([0,0,45]) cube([80,10,40]);
  }
  translate([0,0,-1]) cylinder(r=13,h=30,$fn=200);
  translate([0,-12.5,-1]) cube([40,25,30]);
  
  translate([-40,00,10]) rotate([45,90,0]) cylinder(r=2,h=30,$fn=50);
  translate([0,40,10]) rotate([45,90,0]) cylinder(r=2,h=30,$fn=50);
}