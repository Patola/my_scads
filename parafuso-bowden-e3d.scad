difference() {
    union() {
        cylinder(r=4.95,h=7.5,$fn=60);
        translate([0,0,7.5]) cylinder(r=4.95,r2=1.2,h=5,$fn=60);
    }
    translate([0,0,-1]) cylinder(r=1.2,h=19,$fn=30);
}