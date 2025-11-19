// Plate dimensions
plate_width = 130;
plate_height = 40;
plate_thick = 5;

// Opening dimensions (rotated 90 degrees)
hole_w = 12.5;    // width in X direction
hole_h = 20;      // height in Y direction

holes = 5;

// Compute spacing so that the first hole is one spacing away from the edge
free_space = plate_width - holes * hole_w;
spacing = free_space / (holes + 1);  // one spacing before first and after last hole

difference()
{
    // Base plate
    cube([plate_width, plate_height, plate_thick], center = false);

    // Holes cut slightly below zero to fully cut through
    for (i = [0 : holes - 1])
    {
        translate([spacing + i * (hole_w + spacing), (plate_height - hole_h) / 2, -0.1])
            cube([hole_w, hole_h, plate_thick + 0.2], center = false);  // 0.2 extra thickness for full cut below and above
    }
}

