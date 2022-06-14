module CoreFluteClip(panelthickness,plasticThickness,winglength,Height,Gripers = 0.2){
    _ClipThickness = panelthickness + plasticThickness*2;
    _cutletOffsetRadius = panelthickness/2;

    difference(){
        render(){
            // body of clip
            difference(){
                cube([_ClipThickness,winglength,Height]);

                translate([plasticThickness,_cutletOffsetRadius,-0.01])
                cube([panelthickness,winglength,Height+0.02]);

                translate([_cutletOffsetRadius+plasticThickness,_cutletOffsetRadius,-0.01])
                cylinder(r=_cutletOffsetRadius, h=Height+0.02);
            }    

            //gripers
            translate([plasticThickness,winglength-Gripers,0])
            cylinder(r=Gripers,Height);

            translate([_ClipThickness-plasticThickness,winglength-Gripers,0])
            cylinder(r=Gripers,Height);
            }
        translate([-10,winglength/2+2,Height/2+2])
        rotate([0, 90, 0])
        cylinder(r = 2, h= 100);
    }

}