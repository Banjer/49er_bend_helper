// This work is licensed under the Creative Commons Attribution-ShareAlike 3.0 Unported License.
// To view a copy of this license, visit http://creativecommons.org/licenses/by-sa/3.0/.
//
// Bas Spaans (bas.spaans@gmail.com)
//

include <bitmap.scad>;

// Variables

d_mast = 62;
l_helper = 100;
t_skin = 1.5;
d_line = 5;
$fn = 50;

// Calculations

r_mast = d_mast/2;
r_line = d_line/2;

difference () {
	union() {
		hull() {
			cylinder (r = r_mast + t_skin, h = l_helper);
			translate ([13, r_line+r_mast+7, 0]) {cylinder (r = 10, h = 15);}
			translate ([-13, r_line+r_mast+7, 0]) {cylinder (r = 10, h = 15);}
		}
		translate ([r_mast-5, 25, 0]) {cylinder (r = 10, h = 5);}
		translate ([-(r_mast-5), 25, 0]) {cylinder (r = 10, h = 5);}
	}
	translate ([0, 0, -1]) {cylinder (r = r_mast, h = l_helper+2);}
	translate ([0, -30, -1]) {cylinder (r = r_mast+t_skin, h = l_helper+2);}
	translate ([0, r_line+r_mast+15, -10]) {cylinder (r = r_line,h = 60);}
	translate ([0, r_line+r_mast+45, -10]) {cylinder (r = 30, h = 70);}
	translate ([(r_mast), 25, -1]) {cylinder (r = 2, h = 100);}
	translate ([-(r_mast), 25, -1]) {cylinder (r = 2, h = 100);}
	translate ([0, 37, 1]) {
		rotate ([0, 180, 90]) {
			translate ([0,-12,0]) {8bit_char("S", 1.5, 2);}
			8bit_char("W", 1.5, 2);
			translate ([0, 12, 0]) {8bit_char("S", 1.5, 2);}
		}
	}
}