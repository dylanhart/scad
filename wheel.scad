width = 4;
hub = 5;
radius = 30;
spokes = 5;

// remove rotate for printing
rotate([90, 0, 0]) {
    difference() {
        cylinder(h=width, r=radius);
        cylinder(h=width, r=radius - width);
    }
    difference() {
        union() {
            cylinder(h=width, r=hub);
            for (i = [0 : spokes-1]) {
                rotate([0, 0, 360/spokes * i])
                translate([-width/2, 0, 0])
                    cube([width, radius-width, width]);
            }
        }
        cylinder(h=width, r=width/2);
    }
}
