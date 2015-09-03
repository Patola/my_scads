for (loop=[0:2:360]) {
  rotate([0,0,loop]) intersection() {
      translate([-(loop-180)/2,-28.65,100]) rotate([90,0,0]) import ("pro-rolo.stl");
      linear_extrude(height=200) polygon(points=[[0,0],[-100*sin(1),-100],[100*sin(1),-100]]);
  }
}