// MediaCow Touch 2 - CTCL 2021-2025
// Purpose: Case design
// Created: July 7, 2024
// Modified: February 16, 2025

// Units: mm

// == Display dimensions ==
// Format: [length, height, thickness, aa distance right, aa distance left, aa distance top, aa distance bottom, connector distance from right, connector cutout width, connector cutout height]
// Option 1: DFRobot FIT0955
// +2mm for double-sided tape
lcd_dims_dfr = [268, 160, 5 + 2, 4.5, 5, 4, 10, 114, 25, 50];
// Option 2: Innolux N140HCR-GL2
// +2mm for double-sided tape
lcd_dims_inx_n140hcr = [313, 195, 3 + 2, 2.5, 2.5, 2.5, 20, 110, 25, 50];
// Option 3: Innolux N140JCN-EEL/-GS9
// NOTE: Dimensions from N140JCN-GS9 datasheet, 10mm added to cutout width
lcd_dims_inx_n140jcn = [307, 199, 5, 2.5, 2.5, 2.5, 7.6, 307 / 2, 230, 70];
// Selection
lcd_dims = lcd_dims_inx_n140jcn;

lcd_mount_base_height = 2;

dispcover_height = 2;

// == Case dimensions ==
// Thickness of the back of the case
case_base_height = 2;
// Distance from the bottom of the case to the bottom of the LCD mount
case_internal_height = 30;
// Width of the walls that the display mount rests on
case_inner_wall_width = 5;
// Width of the outer structural wall of the case
case_outer_wall_width = 5;
// Width of the posts the LCD mount bolts to
// WARNING: This also determines the LCD mount wall width
case_post_size = 10;

// == Mounting bolt dimensions ==
bolt_od = 4;
// Dimensions based off McMaster-Carr 90725A025
nut_od = 7;
nut_height = 4;

// == Calculated Values ==
// Base + LCD thickness
dispmount_height = lcd_mount_base_height + lcd_dims[2];
dispmount_width = lcd_dims[0] + (case_post_size * 2);
dispmount_length = lcd_dims[1] + (case_post_size * 2);
dispmount_dims = [dispmount_width, dispmount_length, dispmount_height];

base_height = case_base_height + case_internal_height + dispmount_height;
base_width = lcd_dims[0] + (case_post_size * 2) + (case_outer_wall_width * 2);
base_length = lcd_dims[1] + (case_post_size * 2) + (case_outer_wall_width * 2);
base_dims = [base_width, base_length, base_height];

include <mct2_base.scad>;
include <mct2_smec_smd.scad>;
include <mct2_dispmount.scad>;
include <mct2_dispcover.scad>;

view = "exploded"; // [assembled, exploded, base, dispmount, dispcover]

if (view == "assembled") {
    base();
    translate([case_outer_wall_width,case_outer_wall_width,case_internal_height + case_base_height]) dispmount();
    translate([0,0,base_height]) dispcover();
} else if (view == "exploded") {
    base();
    translate([case_outer_wall_width,case_outer_wall_width,50 + base_height]) dispmount();
    translate([0,0,100 + base_height + dispmount_height]) dispcover();
} else if (view == "base") {
    base();
} else if (view == "dispmount") {
    dispmount();
} else if (view == "dispcover") {
    dispcover();
}