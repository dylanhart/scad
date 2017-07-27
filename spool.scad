height = 2;
width = 1;

brim = .1;
edge = .1;
depth = .2;

hole = .2;

module half_spool() {
    rotate_extrude($fn=32)
    polygon([
        [hole/2, height/2],
        [width, height/2],
        [width, height/2 - edge],
        [width - brim, height/2 - edge],
        [width - brim - depth, 0],
        [hole/2, 0]
    ]);
}

union() {
    half_spool();
    mirror([0,0,1]) half_spool();
}