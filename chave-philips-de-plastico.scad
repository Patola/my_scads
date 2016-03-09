module tip() {
  translate([-0.95,-0.95,0]) cube([1.9,1.9,30]); 
  translate([0,0,30]) {
    hull() {
      translate([-0.95,-0.95,0]) cube([1.9,1.9,0.1]);
      translate([0,-0.85,5]) cube([0.1,1.7,0.1]);
    }
  }
}

module philips_tip() {
  translate([-0.95,-0.95,0]) cube([1.9,1.9,30]); 
  translate([0,0,30]) {
    hull() {
      translate([-0.95,-0.95,0]) cube([1.9,1.9,0.1]); 
      translate([-0.85,-0.05,5]) cube([1.7,0.1,0.1]);
    }
    hull() {
      translate([-0.95,-0.95,0]) cube([1.9,1.9,0.1]);
      translate([0,-0.85,5]) cube([0.1,1.7,0.1]);
    }
  }
}

module handle() {
  difference() {
    union() {
      cylinder(r=8,h=8);
      translate([0,0,8]) cylinder(r1=8,r2=7,h=5);
      translate([0,0,13]) cylinder(r1=7,r2=10,h=8);
      translate([0,0,21]) cylinder(r=10,h=40);
      translate([0,0,61]) cylinder(r1=10,r2=6,h=4);
      for (i=[0:20:180]) {
        translate([0,0,41]) rotate([0,0,i]) cube([22,1.6,40],center=true);
      }
    }
    translate([-1.05,-1.05,-1]) cube([2.1,2.1,16]);
  }
}

module adapter() {
  difference() {
    cylinder(r=3.5,h=50,$fn=6);
    translate([-1.05,-1.05,-1]) cube([2.1,2.1,16]);
  }
}

handle();
// rotate([90,0,0]) translate([0.95,0.95,20]) tip();
rotate([90,0,0]) translate([0.95,0.95,20]) philips_tip();
rotate([90,0,0]) translate([-13.5,3.04,0]) adapter(); 