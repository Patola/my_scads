altura=1;
lados=20;
rep=6;
color1="red";
color2="white";
color1boolean=true;
color2boolean=true;



for (i=[0:altura:altura*(rep-1)]) {
  if ((i/altura)%2==0) {
    if (color1boolean) translate([0,0,i]) color(color1) cube([lados,lados,altura]);
  } else {
    if (color2boolean) translate([0,0,i]) color(color2) cube([lados,lados,altura]);
  }

}