    PrintInPlaceOffset = 0.4;
    PlasticThickness = 2;
    guardThickness = 2;
    latchCoreRadius = 5;
    latchThickness = 10;
    guardRadius = latchCoreRadius + PlasticThickness + PrintInPlaceOffset;
    latchHookThickness = 5;

module Latch(latchLength,LatchBasisRadius) {
        
    latchGuard = LatchBasisRadius+PlasticThickness+PrintInPlaceOffset;

    //latch bearing
    difference(){
    translate([0, 0, guardThickness+PrintInPlaceOffset])
    cylinder(r=latchGuard, h=10-PrintInPlaceOffset*2);

    color("yellow",0.1)
    translate([0, 0, guardThickness])
    cylinder(r=LatchBasisRadius+PrintInPlaceOffset, h=10);
    }




    //latch inner
    translate([0, 0, 0])
    cylinder(r=latchGuard, h=guardThickness);

    //latch shaft
    translate([0, 0, guardThickness])
    cylinder(r=LatchBasisRadius, h=latchThickness);

    //latchouter
    translate([0, 0, guardThickness + latchThickness ])
    cylinder(r=latchGuard, h=guardThickness);


    difference(){
    //latch body
    translate([-2.5,0,guardThickness+PrintInPlaceOffset + (latchThickness-5)/2])
    cube([latchHookThickness,latchLength-latchHookThickness,latchHookThickness]);

    color("yellow",0.1)
    translate([0, 0, guardThickness])
    cylinder(r=5+0.2, h=10);
    }

    latchRadius = 10;
    translate([-2.5,latchLength+latchHookThickness,guardThickness+PrintInPlaceOffset + (latchThickness-5)/2]){
        difference(){
            cylinder(r=latchRadius,h=latchHookThickness);
            translate([0,0 ,-0.01]){
                cylinder(r=latchHookThickness+PrintInPlaceOffset,h=latchHookThickness+0.02);
                translate([-latchRadius*2,-50,0])
                cube([20,100,5+0.02]);
            }
        }
    }
}

module Handle(HandleBasisRadius){

    m4 = 4;

    difference(){
        render(){
    //latch inner
    translate([0, 0, 0])
    cylinder(r=HandleBasisRadius+PlasticThickness, h=guardThickness);

    //latch shaft
    translate([0, 0, guardThickness])
    cylinder(r=HandleBasisRadius, h=latchThickness);

    //latchouter
    translate([0, 0, guardThickness + latchThickness ])
    cylinder(r=HandleBasisRadius+PlasticThickness, h=guardThickness);

    //knobshaft
    translate([0, 0, guardThickness*2 + latchThickness])
    cylinder(r=HandleBasisRadius,h=latchThickness);
    //knob
    translate([0, 0, guardThickness*2 + latchThickness*2 ])
    sphere(r=HandleBasisRadius*2);
        }
        translate([0,0,-0.01])
        cylinder(r=m4/2,h=15+0.02);
    }
}