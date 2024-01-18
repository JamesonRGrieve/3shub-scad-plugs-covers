InnerShaftID = 33.20;
OuterShaftID = 47.80;
OuterShaftOD = 56.00;
OuterShaftDepth = 20.00;
GripHeight = 20.00;
GripThickness = 5.00;
CapHeight = 5.00;
SlotWidth = 26.00;
// Resolution Parameter.
$fa = 1.00;
// Resolution Parameter.
$fs = 0.20;

union() {
translate([0,0,CapHeight]) union() {
    cylinder(OuterShaftDepth, d1=OuterShaftID, d2=OuterShaftID);
    translate([0,0,OuterShaftDepth]) cylinder(10, d1=InnerShaftID, d2=InnerShaftID*0.95);
    difference() {
        cylinder(GripHeight, d1=OuterShaftOD+GripThickness, d2=OuterShaftOD+GripThickness);
        cylinder(OuterShaftDepth, d1=OuterShaftOD, d2=OuterShaftOD);
        translate([-SlotWidth/2, 0, 0]) cube([SlotWidth, OuterShaftOD+GripThickness, GripHeight]);
    }
    
}
cylinder(CapHeight, d1=OuterShaftOD+GripThickness, d2=OuterShaftOD+GripThickness);
}