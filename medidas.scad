difference() {
  cube([100,100,2]);
  for (i=[2:10:92]) {
    for (j=[2:10:92]) {
      translate([i,j,-1]) cube([6,6,4]);
    }
  }
}
cube([5,5,100]);
translate([2,3,2]) rotate([90,0,0]) linear_extrude(height=3) polygon(points=[[0,0],[50,0],[0,50]]);
translate([0,2,2]) rotate([90,0,90]) linear_extrude(height=3) polygon(points=[[0,0],[50,0],[0,50]]);