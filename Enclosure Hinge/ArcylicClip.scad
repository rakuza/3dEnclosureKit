module ArcylicClip(CoreFluteThickness,Height,WallThickness,Depth) {
    render(){
        clipThickness = CoreFluteThickness+WallThickness*2;

        //solid part of clip
        difference(){
        cube([clipThickness,clipThickness+1.5,Height]);
        translate([clipThickness/2,clipThickness+1.5,-0.01])
        cylinder(r=CoreFluteThickness/2, h=Height+0.02);
        }

        //Clip Body
        difference(){
        translate([0, clipThickness, 0]) {
            difference(){
                cube([clipThickness,Depth,Height]);
                _ArcylicClip_StayOut(CoreFluteThickness,Height,WallThickness,Depth);
            }
        }

        //Hole
        rotate([0, 90, 0])
        translate([-Height/2,Depth/2+clipThickness,-1])
        cylinder(r=2, h=50);
        }
    }


}

module _ArcylicClip_StayOut(CoreFluteThickness,Height,WallThickness,Depth){
    translate([WallThickness, 0, -0.01])
    cube([CoreFluteThickness,Depth+0.01,Height+0.02]);
}