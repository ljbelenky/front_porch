//dimensions of  patio
w = 10;
d = 8;
t = 8/12;

// existing slab
color("gray")
    translate([-w, 0, 0])
        linear_extrude(height = t)
            square([w, d], center = false);
            
// pillar 1
color("black")
    translate([-w+1, 6, t])
        linear_extrude(height = 8)
            square([.33,.33], center = true);
            
// pillar 2
color("black")
    translate([-w+1+4, 6, t])
        linear_extrude(height = 8)
            square([.33,.33], center = true);
            
            
// path
color("gray")
    translate([-4, d, 0])
        linear_extrude(height = t/2)
            square([3, 6], center = false);




