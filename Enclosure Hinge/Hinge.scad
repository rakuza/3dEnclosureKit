module Hinge(h){
hingeHeight = h;
hingeRadius = 4;
hingeStayOut = 0.4;
hingeOuter = 6 + hingeStayOut;
translate([hingeOuter,0,0]){
    difference(){
    for (i=[0:2:5]) {
        color("blue")
        translate([0,0,i*10+(hingeStayOut*i)])
        cylinder(r = hingeOuter, h = 10);
    }
    translate([0, 0, -0.01])
    cylinder(r = hingeRadius+hingeStayOut, h = hingeHeight+0.02+(hingeStayOut*5));
    }

    for (i=[1:2:4]) {
        color("lightblue")
        translate([0,0,i*10+(hingeStayOut*i)])
        cylinder(r = hingeOuter, h = 10);
    }
    
    color("lightblue")
    cylinder(r=hingeRadius, h=hingeHeight+(hingeStayOut*5)-hingeStayOut);
    }
}

module hingeStayOutB(h){
hingeHeight = h;
hingeRadius = 4;
hingeStayOut = 0.4;
hingeOuter = 6 + hingeStayOut;
translate([hingeOuter,0,0]){
    translate([0, 0, -0.01])
    cylinder(r = hingeRadius+hingeStayOut, h = hingeHeight+0.02+(hingeStayOut*5));

    for (i=[1:2:4]) {
        color("lightblue")
        translate([0,0,i*10+(hingeStayOut*i-0.2)])
        cylinder(r = hingeOuter+0.4, h = 10+0.4);
    }

    cylinder(r=hingeRadius, h=hingeHeight+(hingeStayOut*5)-hingeStayOut);
    }
}

module hingeStayOutLB(h){
    hingeHeight = h;
hingeRadius = 4;
hingeStayOut = 0.4;
hingeOuter = 6 + hingeStayOut;
translate([hingeOuter,0,0]){
    for (i=[0:2:5]) {
        color("blue")
        translate([0,0,i*10+(hingeStayOut*i-0.2)])
        cylinder(r = hingeOuter+0.4, h = 10+0.4);
    }

    cylinder(r=hingeRadius, h=hingeHeight+(hingeStayOut*5)-hingeStayOut);
    }
}