use <arc-gpl3.scad>

voltas=80;

module pralampada() {
  difference() {
    union() {
      minkowski() {
        cylinder(r=7.8,h=17,$fn=voltas);
        sphere(r=3,$fn=voltas);
      }
      translate([0,30,0]) rotate([90,0,0]) import ("/home/patola/maker/stl/boas_amostras/FlexiTubing_001.STL");
    translate([0,23.5,0]) rotate([90,0,0]) cylinder(r1=4,r2=12,h=18,$fn=voltas); 
    }
    translate([0,0,0]) cylinder(r=7.8,h=20,$fn=voltas);
  }
  
}

module prapilha() {
  difference() {
    minkowski() {
      translate([-1,0,0]) rotate([0,90,0]) cylinder(h=32,r=5, $fn=voltas);
      sphere(r=3,$fn=voltas); 
    }
    rotate([0,90,0]) cylinder(h=30.50,r=5.10,$fn=voltas);
    translate([0,-5.10,-40]) cube([30.50,10.20,40]);
  }
}

difference() {
  union() {
    pralampada();
    translate([-15,0,-10]) prapilha();
    translate([19,0,-9]) cube([2,8,2], center=true);
    translate([-19,0,-9]) cube([2,8,2], center=true);
    translate([19,0,-9]) cube([2,2,8], center=true);
    difference() {
      cylinder(r=7.91,h=5,$fn=voltas);
      translate([0,0,-0.1]) cylinder(r=7.1,h=5.2,$fn=voltas);
    }
  }
  translate([-11.8,1.5,4.6]) scale([.3,3,.3]) rotate([90,0,0]) import("/home/patola/maker/testes/forma-canaleta-pilha.stl");

  translate([6.2,1.5,-6.6]) scale([.3,3,.3]) rotate([90,0,0]) import("/home/patola/maker/testes/forma-canaleta-baixo.stl");
  
  translate([8,0,22]) cube ([2,3,40], center=true);
  rotate([0,0,90]) translate([8,0,22]) cube ([2,3,30], center=true); // 13 from top
  rotate([0,0,-90]) translate([8,0,22]) cube ([2,3,24], center=true); // 10 from top
  
  translate([10,0,-16]) cube([20,6,5], center=true);

  rotate([0,0,-22.5]) translate([0,0,7]) 3D_arc(w=3,r=8,deg=45,fn=voltas,h=3);  
  rotate([0,0,157.5]) translate([0,0,10]) 3D_arc(w=3,r=8,deg=45,fn=voltas,h=3);  
  
  translate([-200,-200,-36]) cube([400,400,20]); 

}
//%translate([-8,0,0]) cube([.8,1.8,40],center=true);

// alças / tabs / handles

translate([-3,2,1]) cube([1,1,3], center=true);
translate([-3,-2,1]) cube([1,1,3], center=true);
translate([3,2,1]) cube([1,1,3], center=true);
translate([3,-2,1]) cube([1,1,3], center=true);
translate([3,0,2]) cube([1,3,1], center=true);
translate([-3,0,2]) cube([1,3,1], center=true);

