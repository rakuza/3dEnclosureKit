$fn = 25;

include <Clip.scad>;
include <HandleAndLatch.scad>;
CoreFluteThickness = 6;
PlasticThickness = 2;
NetCoreFluteThickness =  CoreFluteThickness + PlasticThickness*2;

ArcylicThickness = 2.5;
NetArcylicThickness = ArcylicThickness + PlasticThickness*2;

Height = 50;
Depth = 40;

color("orchid"){
translate([NetCoreFluteThickness, 0, 0])
rotate([180, 180, 0])
CoreFluteClip(CoreFluteThickness,PlasticThickness,Depth,Height);

cube([NetCoreFluteThickness,NetCoreFluteThickness,Height]);
}

translate([NetCoreFluteThickness/2,NetCoreFluteThickness,Height/2])
rotate([270, 270, 0])
Latch(50,5);

color("lightblue",1)
translate([90 ,0,Height/2])
rotate([270, 0, 0])
Handle(5);