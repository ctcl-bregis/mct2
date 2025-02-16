// MediaCow Touch 2 - CTCL 2021-2025
// Purpose: Base component
// Created: February 12, 2025
// Modified: February 16, 2025

// Module since this is getting out of hand
module _base_post(pos,nut=false) {
    translate(pos) {
        difference() {
            cube([case_post_size, case_post_size, case_internal_height]);
            if (nut) {
                translate([case_post_size / 2, case_post_size / 2, case_internal_height - nut_height]) {
                    cylinder(d=nut_od, h=nut_height + 5, $fn=6);
                }
            }
        }
    }
}

module base() {
    union() {
        difference() {
            cube(base_dims);

            // Cutout for the LCD mount
            translate([case_outer_wall_width, case_outer_wall_width, base_height - dispmount_height]) {
                // Add 1 to remove z-fighting in preview
                cube(dispmount_dims + [0,0,1]);
            }

            // Internal cutout
            translate([case_outer_wall_width + case_inner_wall_width, case_outer_wall_width + case_inner_wall_width, case_base_height]) {
                cube([base_width - (case_outer_wall_width * 2) - (case_inner_wall_width * 2), base_length - (case_outer_wall_width * 2) - (case_inner_wall_width * 2), base_height - case_base_height]);
            }
            // Mounting post cutouts
            // Bottom Left
            _base_post([case_outer_wall_width, case_outer_wall_width, case_base_height]);
            // Bottom Right
            _base_post([base_width - case_post_size - case_outer_wall_width, case_outer_wall_width, case_base_height]);
            // Top Left
            _base_post([case_outer_wall_width, base_length - case_post_size - case_outer_wall_width, case_base_height]);
            // Top Right
            _base_post([base_width - case_post_size - case_outer_wall_width, base_length - case_post_size - case_outer_wall_width, case_base_height]);
        }
        _base_post([case_outer_wall_width, case_outer_wall_width, case_base_height], true);
        // Bottom Right
        _base_post([base_width - case_post_size - case_outer_wall_width, case_outer_wall_width, case_base_height], true);
        // Top Left
        _base_post([case_outer_wall_width, base_length - case_post_size - case_outer_wall_width, case_base_height], true);
        // Top Right
        _base_post([base_width - case_post_size - case_outer_wall_width, base_length - case_post_size - case_outer_wall_width, case_base_height], true);
    }
}