altura=1;
lados=20;
rep=6;
color1="red";
color2="white";
color1boolean=true;
color2boolean=true;

module triangulo(x) {
  linear_extrude(height=x) polygon(points=[[0,0],[0,lados],[lados,0]]);
}

for (i=[0:altura:altura*(rep-1)]) {
  if ((i/altura)%2==0) {
    if (color1boolean) translate([0,0,i]) color(color1) triangulo(altura);
    if (color2boolean) translate([lados,lados,i]) color(color2) mirror([1,1,0]) triangulo(altura);
  } else {
    if (color2boolean) translate([0,0,i]) color(color2) triangulo(altura);
    if (color1boolean) translate([lados,lados,i]) color(color1) mirror([1,1,0]) triangulo(altura);
  }

}