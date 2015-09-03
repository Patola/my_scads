// Production:
// $fn=200;
// Test:
$fn=50;
module barras() {
  union() {
    translate([22.5,0,-221.5]) cylinder(h=443,r=4.5);
    translate([-22.5,0,-221.5]) cylinder(h=443,r=4.5);
  }
}

module presilha() {
  minkowski() {
    union() {
      difference() {
        cylinder(r=9,h=6);
        translate([-10,-5,0]) cube([10,10,6]);
      }
      translate([8.5,-3,0]) rotate([0,0,70]) cube([10,6,6]);
    }
    sphere(r=1);
  }
}

difference() {
  union() {
// bar
    minkowski() {
      translate([-28,7,0]) {
        cube([60,8,30]);
     }
     sphere(r=3);
    }

    translate([22.5,0,0]) {
      presilha();
    }

    translate([22.5,0,24]) {
      presilha();
    }

    translate([-22.5,0,0]) {
      presilha();
    }

    translate([-22.5,0,24]) {
      presilha();
    }


    translate([-14,18,5]) {
      difference() {
        minkowski() {
          cube([32,20,19]);
          cylinder(r=1,h=1);
        }
        translate([-2,0,7.3]) cube([40,22,5.4]);
        translate([15,12.3,-1]) cylinder(r=3.3,h=40);
      }
    }
  }
  #barras();
}
