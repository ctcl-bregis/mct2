// MediaCow Touch 2 - CTCL 2021-2024
// Purpose: Case design
// Created: July 7, 2024
// Modified: July 30, 2024

// Units - mm
// X - Width
// Y - Length
// Z - Height

// Accepted values:
// "base" - Everything else
// "lcdmount" - Display mount
// "lcdcover" - Display cover layer
// "all" - Show everything
// "allexp" - Show everything, exploded view
show = "allexp";
// Show components - true/false
comp = false;

// Dimensions
// 5mm for display, 2mm double-sided tape
lcd_dims = [268, 160, 5 + 2];
// Distance between connector middle and the outer right side of the display
lcd_conn_from_right = 114;
// Distances between the outer dimension of the lens to the LCD active area
lcd_aa_dist_right = 4.5;
lcd_aa_dist_left = 5;
lcd_aa_dist_bottom = 10;
lcd_aa_dist_top = 4;

case_bottom_height = 2;
// Distance between the case bottom layer and the bottom of the display mount
case_internal_height = 30;

// Walls that the display mount rests on
case_inner_wall_width = 5;

// Outer structural wall of the case
// WARNING: This variable changes the size of the case
case_outer_wall_width = 5;
// Size of the posts that the display mount bolts to. 
// WARNING: This variable changes the size of the case and LCD mount
case_post_size = 10;

disp_edge_width = case_post_size;
disp_cover_height = 2;
disp_base_height = 2;
disp_conn_cutout_width = 25;
disp_conn_cutout_length = 50;

// PCB parameters
pcb_width = 160;
pcb_length = 160;
pcb_thickness = 1;

// Standoff parameters
// length of both sides
standoff_base_size = 10;
standoff_height = 3;
standoff_nut_od = 4.5;

// Bolt diameter + tolerance
bolt_dia = 3 + 0.5;

// == Variable Assignment Section ==
// Height of the mount part
lcd_mount_height = disp_base_height + lcd_dims[2];

box_height = case_bottom_height + case_internal_height + lcd_mount_height;
box_width = lcd_dims[0] + (case_post_size * 2) + (case_outer_wall_width * 2);
box_length = lcd_dims[1] + (case_post_size * 2) + (case_outer_wall_width * 2);

// Total size of the case
box_dims = [box_width, box_length, box_height];
// Size of the inside part of the box without display rest walls
box_total_inner_size = [lcd_dims[0] + (case_post_size * 2), lcd_dims[1] + (case_post_size * 2), box_height];
// Size of the inside part of the box with display rest walls
// No wall right due to IO
box_inner_size = [lcd_dims[0] + ((case_post_size * 2) - case_inner_wall_width), lcd_dims[1] + ((case_post_size * 2) - (case_inner_wall_width * 2)), box_height];

// 3D size of posts
post_dims = [case_post_size, case_post_size, case_internal_height];

// Case bolt center locations
case_bolt_centers = [
    [case_outer_wall_width, case_outer_wall_width, case_bottom_height] + [(standoff_base_size / 2), (standoff_base_size / 2), post_dims[2] - standoff_nut_od],
    [case_outer_wall_width + box_total_inner_size[0] - case_post_size, case_outer_wall_width, case_bottom_height] + [(standoff_base_size / 2), (standoff_base_size / 2), post_dims[2] - standoff_nut_od],
    [case_outer_wall_width, case_outer_wall_width + box_total_inner_size[1] - case_post_size, case_bottom_height] + [(standoff_base_size / 2), (standoff_base_size / 2), post_dims[2] - standoff_nut_od],
    [case_outer_wall_width + box_total_inner_size[0] - case_post_size, case_outer_wall_width + box_total_inner_size[1] - case_post_size, case_bottom_height] + [(standoff_base_size / 2), (standoff_base_size / 2), post_dims[2] - standoff_nut_od]
];

// == Object Drawing Section ==
module base() {
    module standoff() {
        translate([0, 0, 0]) {
            difference() {
                cube([standoff_base_size, standoff_base_size, standoff_height]);
                translate([(standoff_base_size / 2), (standoff_base_size / 2), -1]) { 
                    cylinder(r=standoff_nut_od / 2, h=standoff_nut_od + 2, $fn=6);
                }
            }
        }
    }
    difference() {
        union() {
            difference() {
                cube(box_dims);
                // Cutout for internals
                translate([case_outer_wall_width + case_inner_wall_width, case_outer_wall_width + case_inner_wall_width, case_bottom_height]) {
                    cube(box_inner_size);
                }
                // Cutout for display mount
                translate([case_outer_wall_width, case_outer_wall_width, case_bottom_height + case_internal_height]) {
                    cube([lcd_dims[0] + (case_post_size * 2), lcd_dims[1] + (case_post_size * 2), box_height]);
                }
            }
            // With 0 Y = Bottom, 0 X = Left
            // Bottom Left Post
            translate([case_outer_wall_width, case_outer_wall_width, case_bottom_height]) {
                cube(post_dims);
            }
            // Bottom Right Post
            translate([case_outer_wall_width + box_total_inner_size[0] - case_post_size, case_outer_wall_width, case_bottom_height]) {
                cube(post_dims);
            }
            // Top Left Post
            translate([case_outer_wall_width, case_outer_wall_width + box_total_inner_size[1] - case_post_size, case_bottom_height]) {
                cube(post_dims);
            }
            // Top Right Post
            translate([case_outer_wall_width + box_total_inner_size[0] - case_post_size, case_outer_wall_width + box_total_inner_size[1] - case_post_size, case_bottom_height]) {
                cube(post_dims);
            }
        }
        for (pos = case_bolt_centers) {
            translate(pos) {
                cylinder(r=standoff_nut_od / 2, h=standoff_nut_od + 1, $fn=6);
            }
        }
    }
    // PCB standoffs
    translate([box_dims[0] - case_outer_wall_width - pcb_length, case_outer_wall_width + case_post_size, case_bottom_height]) {
        // Bottom Left
        translate([0, 0, 0]) {
            standoff();
        }
        // Bottom Right
        translate([pcb_length - standoff_base_size, 0, 0]) {
            standoff();
        }
        // Top Left
        translate([0, pcb_width - standoff_base_size, 0]) {
            standoff();
        }
        // Top Right
        translate([pcb_length - standoff_base_size, pcb_width - standoff_base_size, 0]) {
            standoff();
        }
        
    } 

    if (comp) {
        color("#009900")
        translate([box_dims[0] - case_outer_wall_width - pcb_length, case_outer_wall_width + case_post_size, case_bottom_height + standoff_height]) 
        cube([pcb_width, pcb_length, pcb_thickness]);
    }
    
    
}

module lcdmount() {
    difference() {
        translate([case_outer_wall_width, case_outer_wall_width, 0]) {
            difference() {
                cube([box_total_inner_size[0], box_total_inner_size[1], lcd_mount_height]);
                translate([case_post_size, case_post_size, disp_base_height]) {
                    // Add 1 to prevent z fighting effects
                    cube(lcd_dims + [0,0,1]);
                }
                conn_cutout_dist = 
                    box_total_inner_size[0] - 
                    case_post_size -
                    (lcd_conn_from_right - (disp_conn_cutout_width / 2));
                
                // Once again add -1 to height for z fighting
                translate([conn_cutout_dist, case_post_size, -1]) {
                    // Connector cutout 
                    cube([disp_conn_cutout_width, disp_conn_cutout_length, disp_base_height + 2]);
                }   
            }
        }
        for (pos = case_bolt_centers) {
            translate([pos[0], pos[1], -1]) {
                cylinder(r = bolt_dia / 2, h = lcd_mount_height + 2, $fn=360);
            }
        }
    }
}

module lcdcover() {
    difference() {
        cube([box_dims[0], box_dims[1], disp_cover_height]);
        cutout_width = box_dims[0] - (case_post_size * 2) - (case_outer_wall_width * 2) - lcd_aa_dist_right - lcd_aa_dist_left;
        cutout_length = box_dims[1] - (case_post_size * 2) - (case_outer_wall_width * 2) - lcd_aa_dist_top - lcd_aa_dist_bottom;
        left_distance = lcd_aa_dist_left + case_post_size + case_outer_wall_width;
        bottom_distance = lcd_aa_dist_bottom + case_post_size + case_outer_wall_width;
        translate([left_distance, bottom_distance, -1]) {
            cube([cutout_width, cutout_length, disp_cover_height + 2]);
        }
        for (pos = case_bolt_centers) {
            translate([pos[0], pos[1], -1]) {
                cylinder(r = bolt_dia / 2, h = lcd_mount_height + 2, $fn=360);
            }
        }
    }
}




if (show == "base") {
    color("#FFFFFF")
    base();
}

if (show == "lcdmount") {
    color("#FFFFFF")
    lcdmount();
}

if (show == "lcdcover") {
    color("#FFFFFF")
    lcdcover();
}

if (show == "all") {
    color("#FFFFFF") {
        base();
        translate([0, 0, case_bottom_height + case_internal_height]) {
            lcdmount();
        }
        translate([0, 0, case_bottom_height + case_internal_height + disp_base_height + lcd_dims[2]]) {
            lcdcover();
        }
    }
}

if (show == "allexp") {
    color("#FFFFFF") {
        base();
        translate([0, 0, case_bottom_height + case_internal_height + 50]) {
            lcdmount();
        }
        translate([0, 0, case_bottom_height + case_internal_height + disp_base_height + lcd_dims[2] + 100]) {
            lcdcover();
        }
    }
}

