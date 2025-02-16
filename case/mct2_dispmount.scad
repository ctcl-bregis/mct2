// MediaCow Touch 2 - CTCL 2021-2025
// Purpose: Display mount component
// Created: February 12, 2025
// Modified: February 16, 2025

module dispmount() {
    difference() {
        // Base
        cube(dispmount_dims);
        // Case post size defines the wall width
        translate([case_post_size, case_post_size, lcd_mount_base_height]) {
            // Cutout
            cube([lcd_dims[0], lcd_dims[1], dispmount_height]);
        }
        translate([(lcd_dims[7] - (lcd_dims[8] / 2) + case_post_size) , case_post_size, -1]) {
            // Connector cutout
            cube([lcd_dims[8], lcd_dims[9], dispmount_height]);
        }
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