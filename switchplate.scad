// =========================
// Base plate parameters
// =========================
base_w = 130;
base_h = 40;
base_d = 5;

// rocker switch
rock_w = 12.5;
rock_h = 20;
rock_d = base_d + 0.2;  // to cut below and above plate
rock_count = 5;

// spacing
free_space = base_w - rock_count * rock_w;
spacing = free_space / (rock_count + 1);

// rocker switch position increments
x = spacing + rock_w;
y = (base_h - rock_h) / 2;


// =========================
// Foot parameters (simple cylinders)
// =========================
foot_h = 8;
foot_r = 5;
foot_m = 8;


// =========================
// Model
// =========================
difference() {

    // Base plate
    cube([base_w, base_h, base_d]);

    // Rocker switch cutouts — no loops
    translate([x *0 + spacing, y, -0.1])        cube([rock_w, rock_h, rock_d]);
    translate([x *1 + spacing, y, -0.1])        cube([rock_w, rock_h, rock_d]);
    translate([x *2 + spacing, y, -0.1])        cube([rock_w, rock_h, rock_d]);
    translate([x *3 + spacing, y, -0.1])        cube([rock_w, rock_h, rock_d]);
    translate([x *4 + spacing, y, -0.1])        cube([rock_w, rock_h, rock_d]);
}


// =========================
// Feet (simple cylinders)
// =========================

// Move all feet below the plate
translate([0, 0, -foot_h]) {

    // Front & Rear left foot
    translate([foot_m, foot_m,          0]) linear_extrude(foot_h) circle(foot_r);
    translate([foot_m, base_h - foot_m, 0]) linear_extrude(foot_h) circle(foot_r);

    // Front & Rear right foot
    translate([base_w - foot_m, foot_m,          0]) linear_extrude(foot_h) circle(foot_r);
    translate([base_w - foot_m, base_h - foot_m, 0]) linear_extrude(foot_h) circle(foot_r);
}
