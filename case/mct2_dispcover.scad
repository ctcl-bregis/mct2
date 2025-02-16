// MediaCow Touch 2 - CTCL 2021-2025
// Purpose: Display cover component
// Created: February 12, 2025
// Modified: February 16, 2025

module dispcover() {
    difference() {
        cube([base_width, base_length, dispcover_height]);
        translate([case_post_size + case_outer_wall_width, case_post_size + case_outer_wall_width + lcd_dims[6],-1]) {
            // Active area distances subtracted from the LCD dimensions so the cover covers the edges
            cube([lcd_dims[0] - lcd_dims[3] - lcd_dims[4], lcd_dims[1] - lcd_dims[5] - lcd_dims[6], dispcover_height + 2]);
        }
        translate([case_outer_wall_width, case_outer_wall_width, 0]) {
            // Mounting holes
            // Bottom Left
            translate([(case_post_size / 2), (case_post_size / 2), -1]) {
                cylinder(r=bolt_od / 2, h = dispmount_height + 2, $fn=360);
            }
            // Bottom Right
            translate([(dispmount_width - case_post_size / 2), (case_post_size / 2), -1]) {
                cylinder(r=bolt_od / 2, h = dispmount_height + 2, $fn=360);
            }
            // Top Left
            translate([(case_post_size / 2), (dispmount_length - case_post_size / 2), -1]) {
                cylinder(r=bolt_od / 2, h = dispmount_height + 2, $fn=360);
            }
            // Top Right
            translate([(dispmount_width - case_post_size / 2), (dispmount_length - case_post_size / 2), -1]) {
                cylinder(r=bolt_od / 2, h = dispmount_height + 2, $fn=360);
            }
        }
    }
}