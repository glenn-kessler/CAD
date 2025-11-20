// base plate
base_w = 130;
base_h = 40;
base_d = 5;

// rocker switch
rock_w = 12.5;
rock_h = 20;
rock_d = base_d + 0.2;  // to cut below and above plate
rock_count = 5;

// Spacing
free_space  = base_w - rock_count * rock_w;
spacing     = free_space / (rock_count + 1);

// x-y-position for rocker switches
pos_x = spacing + rock_w;
pos_y = (base_h - rock_h) / 2;

difference()
{
    // Base plate
    cube([base_w, base_h, base_d]);
    
    // cout-outs for rocker switches
    translate([pos_x * 0 + spacing, pos_y, -0.1]) cube([rock_w, rock_h, rock_d]);
    translate([pos_x * 1 + spacing, pos_y, -0.1]) cube([rock_w, rock_h, rock_d]);
    translate([pos_x * 2 + spacing, pos_y, -0.1]) cube([rock_w, rock_h, rock_d]);
    translate([pos_x * 3 + spacing, pos_y, -0.1]) cube([rock_w, rock_h, rock_d]);
    translate([pos_x * 4 + spacing, pos_y, -0.1]) cube([rock_w, rock_h, rock_d]);
}
