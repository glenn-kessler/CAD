module hexagon(size = 10, height = 30) {
    linear_extrude(height = height)
    polygon(points=[
        [size, 0],
        [size/2, size * sqrt(3)/2],
        [-size/2, size * sqrt(3)/2],
        [-size, 0],
        [-size/2, -size * sqrt(3)/2],
        [size/2, -size * sqrt(3)/2]
    ]);
}


translate([-30, 0, 0])
cube([10, 20, 30], center=true);

sphere(r=15, $fn=100);                      

translate([30, 0, 0])
cylinder(h=30, r=10, center=true);

difference() {
translate([60, 0, -15]) hexagon(10, 30);
translate([60, 0, -16]) cylinder(h = 32, r = 5, cetner=true);    
}
