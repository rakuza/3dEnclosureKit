$fa = 1;
$fs = 0.4;
$fn = 20;
include <./Clip.scad>;

panelthickness = 5.6;
plasticThickness = 2;
winglength = 30;
Height = 40;

netThickness = panelthickness+plasticThickness*2;
cube([netThickness,netThickness,Height]);
translate([0,netThickness,0])
CoreFluteClip(panelthickness,plasticThickness,winglength,Height);

rotate([0,0,-90])
translate([-netThickness,netThickness,0])
CoreFluteClip(panelthickness,plasticThickness,winglength,Height);