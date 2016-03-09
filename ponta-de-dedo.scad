difference() {
  union() {
    cylinder(r=10,h=20,$fn=100);
    translate([0,0,19]) minkowski() {
      sphere(r=9.5,$fn=100);
      cylinder(r=0.5,h=9);
    }
    for (i=[0:10:90]) {
      translate([-1,0,29]) rotate([0,i,0]) difference() {
        scale([.9,.9,.08]) sphere(r=11);
        translate([0,0,-13]) cylinder(r=8,h=26);
      }
    }
    for (i=[1:10]) {
      translate([-1,0,29-i]) difference() {
        scale([.9,.9,.08]) sphere(r=11);
        translate([0,0,-13]) cylinder(r=8,h=26);
      }
    }
  }
  translate([0,0,-1]) cylinder(r=8.5,h=22,$fn=100);
  translate([0,0,18.9]) minkowski() {
    sphere(r=8,$fn=100);
    cylinder(r=0.5,h=9);
  }
  translate([7,0,10]) scale([1,1,.7]) sphere(r=11); 
  translate([-12,0,10]) scale([1,1,.4]) sphere(r=14); 
  translate([10,0,30]) scale([1.2,1.2,1]) sphere(r=10);
  intersection() {
    translate([0,0,19]) minkowski() {
      sphere(r=9.7,$fn=100);
      cylinder(r=0.5,h=9);
    }
    union() {
      for (i=[-8:2:8]) {
        translate([-2,i,22]) rotate([0,0,180]) cube([40,.5,15]);
      }
    }
  }  
}