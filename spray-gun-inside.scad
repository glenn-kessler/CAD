// from top to bottom
h_total = 8.45;
d_innen = 9;

d5 = 13.6; d4 = 18;  d3 = 16.85;  d2 = 13.7;  d1 = 17.0;  
h5 = 1.1;  h4 = 2;   h3 = 1.55;   h2 = 2.25;  h1 = 1.55;     

t5 = h1+h2+h3+h4;
t4 = h1+h2+h3;
t3 = h1+h2;
t2 = h1;
t1 = 0;

module union(){
    translate([0,0,t5]) cylinder(h=h5, r=d5/2); 
    translate([0,0,t4]) cylinder(h=h4, r=d4/2); 
    translate([0,0,t3]) cylinder(h=h3, r=d3/2); 
    translate([0,0,t2]) cylinder(h=h2, r=d2/2); 
    translate([0,0,t1]) cylinder(h=h1, r=d1/2); 
}

difference(){
    union();
    
    translate([0,0,-0.1])
    cylinder(h=h_total+0.2,  r=d_innen/2);
}

