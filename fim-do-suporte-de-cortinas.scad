difference() {
  union() {
    cylinder (r=15,h=19,$fn=200);
    intersection() {
      translate([0,0,-10]) cylinder (r=15,h=30,$fn=200);
      translate([0,0,47.5]) sphere(r=50,$fn=200);
    }
  }
  translate([0,0,3]) cylinder(r=13,h=30,$fn=200);
}