voltas=40;
PI=3.141593;

 /* Screw thread parameters
  */
    t_od=15;    // Thread outer diameter
    t_st=2.5;   // Step/traveling per turn
    t_lf=55;    // Step angle degrees
    t_ln=25;    // Length of the threade section
    t_rs=PI/2;  // Resolution
    t_se=1;     // Thread ends style
    t_gp=0;     // Gap between nut and bolt threads
//    nozzle_size=0.4; /* Screw holes will be increased by this diameter. If for printing you use XY compensation, this will not be necessary. */
    nozzle_size=0.0;
    b_hg=10; // height of the screw knob


include </home/patola/maker/openscad/lib/knurledFinishLib.scad>
include </home/patola/maker/openscad/lib/polyScrewThread_r1.scad>

union() {
  difference() {
    minkowski() {
      rotate([90,0,0]) cylinder(h=80,r=12,$fn=voltas);
      sphere(r=10,$fn=voltas);
    }
    translate([-146,-120,-8.5]) cube([160,160,17]);
    translate([-80,-120,16]) cube([160,160,20]);
    translate([-6,-10,22]) rotate([0,180,0]) mkthread_furo();
    translate([-6,-70,22]) rotate([0,180,0]) mkthread_furo();

  }
  translate([4,-40,13]) rotate([0,0,0]) import ("/home/patola/maker/stl/boas_amostras/FlexiTubing_001.STL");
  difference() {
    translate([4,-40,16]) cylinder(r1=12,r2=8,h=12,$fn=voltas);
    translate([4,-40,15.9]) cylinder(r1=4,r2=7,h=12.2,$fn=voltas); 
  }
}

module mkthread_furo() {
  screw_thread(t_od+t_gp+nozzle_size, t_st, t_lf, t_ln, t_rs, t_se);
}

module k_cyl(bnhg)
{
 /* Bolt/Nut parameters
  */
    k_cyl_hg=bnhg;   // Knurled cylinder height
    k_cyl_od=22.5;   // Knurled cylinder outer* diameter

    knurl_wd=3;      // Knurl polyhedron width
    knurl_hg=4;      // Knurl polyhedron height
    knurl_dp=1.5;    // Knurl polyhedron depth

    e_smooth=1;      // Cylinder ends smoothed height
    s_smooth=0;      // [ 0% - 100% ] Knurled surface smoothing amount

    knurled_cyl(k_cyl_hg, k_cyl_od,
                knurl_wd, knurl_hg, knurl_dp,
                e_smooth, s_smooth);
}
