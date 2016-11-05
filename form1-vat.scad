difference() {
  union() {
    
    translate([6,6,0]) minkowski() {
      cube([182,158,3]);
      cylinder(r=6,h=2,$fn=30);
    }
    translate([12.7,0,4.8]) difference() {
      cube([169.60,170,36.2]);
      translate([3,3,0]) cube([163.60,164,40]);
    }
    
    translate([4.2,1,27.2]) minkowski() {
      cube([8.50,2,10.8]);
      rotate([90,0,0]) cylinder(r=3,h=1,$fn=24);
    }
    
    translate([181.3,1,27.2]) minkowski() {
      cube([8.50,2,10.8]);
      rotate([90,0,0]) cylinder(r=3,h=1,$fn=24);
    }
  }
  translate([5,38,-1]) cylinder(r=1.5,h=10,$fn=32);
  translate([5,132,-1]) cylinder(r=1.5,h=10,$fn=32);
  translate([189,38,-1]) cylinder(r=1.5,h=10,$fn=32);
  translate([189,132,-1]) cylinder(r=1.5,h=10,$fn=32);
  translate([22.7,12,-1]) cube([148.60,146,20]);
  // opcional - pra abaixar
  translate([15.7,3,1.2]) cube([163.60,164,20]);
}