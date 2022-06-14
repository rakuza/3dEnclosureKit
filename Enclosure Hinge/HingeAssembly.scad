include <Hinge.scad>
include <CoreFluteClip.scad>
include <ArcylicClip.scad>

$fa = 1;
$fs = 0.4;

Hinge(50);


color("blue")
render(){
    difference(){
        translate([0,1,0])
        CoreFluteClip(6,50,2,40);

        hingeStayOutB(50);
    }
}


color("lightblue")
render(){
    difference(){

        
        rotate([0, 0, 180])
        translate([-6.5,1,0])
        ArcylicClip(2.5,50,2,40);

        hingeStayOutLB(50);
        }
};

