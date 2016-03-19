difference() {
  union() {
    difference() {
      union() {
        translate([0,0,0]) minkowski() {
          cylinder(r=15,h=48,$fn=100);
          cube([220,1,1]);
        }
        // feet
        translate([110,-40,0]) hull() {
          cylinder(r=25,h=8,$fn=60);
          translate([0,80,0]) cylinder(r=25,h=8,$fn=60);
        }
      }
      translate([8,6,8]) sulco();
    }
    bulge();
    // right cylinder, for pen
    translate([200,-20,0]) cylinder(r=12,h=50.1,$fn=60);
    translate([200,-20,50]) sphere(r=12,$fn=60);
    // left cylinder, for tips
    translate([20,-20,0]) cylinder(r=12,h=50,$fn=60);

    // hinge
    difference() {
      translate([7,-10,52]) hull() {
        sphere(r=4,$fn=20);
        translate([26,0,0]) sphere(r=4,$fn=20);
      }
      translate([10,-15,48]) cube([20,14,10]);
      translate([7,-10,52]) hull() {
        sphere(r=2,$fn=16);
        translate([26,0,0]) sphere(r=2,$fn=16);
      } 
    }
    // hinge lid
    translate([8,-10,52]) hull() {
      sphere(r=1.2,$fn=16);
      translate([26,0,0]) sphere(r=1.2,$fn=16);
    }
    // hinge rod supports
    translate([7,-10,42]) cylinder(r=0.6,h=10);
    translate([10,-10,42]) cylinder(r=0.6,h=10);
    translate([13,-10,42]) cylinder(r=0.6,h=10);
    translate([18,-10,42]) cylinder(r=0.6,h=10);
    translate([23,-10,42]) cylinder(r=0.6,h=10);
    translate([28,-10,42]) cylinder(r=0.6,h=10);
    translate([31,-10,42]) cylinder(r=0.6,h=10);
    translate([34,-10,42]) cylinder(r=0.6,h=10);
    // hinge lid, again - circle lid
    translate([20,-12,63]) rotate([-90,0,0]) cylinder(r=12,h=3,$fn=60);
  }
  // slit on the bulge
  translate([37,-16,30]) hull() {
    cylinder(r=1.8,h=30,$fn=20);
    translate([144,0,0]) cylinder(r=1.8,h=30,$fn=20);
  }
  // hole on the pen holder
  translate([200,-20,45]) cylinder(r=7.6,h=20,$fn=40);
  translate([200,-20,35]) cylinder(r1=6,r2=7.6,h=10.1,$fn=40);
  translate([200,-20,10]) cylinder(r1=4,r2=6,h=25.1,$fn=40);
  // hole on the tips holder
  translate([20,-20,20]) cylinder(r=9,h=31,$fn=40);
  // slits for the main body pillow parts
  translate([10,5,20]) cube([16,5,40]);
  translate([186,5,20]) cube([16,5,40]);
}


module meialua() {
  difference() {
    cylinder(r=12,h=60,$fn=30);
    translate([-20,0,-1]) cube([40,40,80]);
  }
}

module sulco() {
  hull() {
    meialua();
    translate([200,0,0]) meialua();
  }
}

module bulge() {
  translate([30,-12,26]) minkowski() {
    rotate([90,0,-90]) linear_extrude(height=1) polygon(points=[[0,0],[6,6],[6,20],[0,20]]);
    hull() {
      sphere(r=4,$fn=30);
      translate([160,0,0]) sphere (r=4,$fn=30); 
    }
  }
}

// lid holder
translate([22,-32,44]) rotate([90,0,-90]) linear_extrude(height=4) polygon(points=[[0,0],[2,4],[2,11],[1,13],[-2,14],[0,11],[0,5],[-3,5],[-3,0]]);