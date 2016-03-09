cylinder(r=0.95,h=5,$fn=30);
translate([0,0,5]) {
  hull() {
    cylinder(r=0.95,h=0.1,$fn=30);
    translate([-0.85,-0.05,5]) cube([1.7,0.1,0.1]);
  }
}