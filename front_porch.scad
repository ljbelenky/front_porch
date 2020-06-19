//dimensions of  patio
w = 15;
d = 8.5;
t = 6/12;

// existing slab
color("gray")
    translate([-w, 0, 0])
        linear_extrude(height = t)
            square([w, d], center = false);
            
// pillar 1
color("brown")
    translate([-14, 4, t])
        linear_extrude(height = 9)
            square([5/12,5/12], center = true);
            
// pillar 2
color("brown")
    translate([-6.5, 4, t])
        linear_extrude(height = 9)
            square([5/12,5/12], center = true);
            
            
// path
color("gray")
    translate([-6, d, 0])
        linear_extrude(height = t/2)
            square([4, 6], center = false);
            
// House
difference(){
color("brown")
    linear_extrude(height=10)
    polygon(points=[[-15,-2],[-15,0],[0,0],[0,8.5],[5,8.5],
                    [5,7.5],[1,7.5],[1,-1],[-14,-1],[-14,-2]]);
    translate([-5,-2,t+.33])
        cube([3,4,6.5],center=false);
    translate([-11.5,-2,6+t])
        cube([3,4,2.5],center=false);
}
// Fence
color("yellow")
    linear_extrude(height=6)
    polygon(points=[[-15,-.5],[-20,-.5],[-20,3],[-20.5,3],[-20.5,-1],
                    [-15,-1]]);
