// replacement part
// spring spray nozzle inlay
d_base = 18.25; r1 = d_base/2;
d_head = 17.4;  r2 = d_head/2;
d_hole = 5;     r3 = d_hole/2; 
h_top  = 10.5;
h_base = 5.05;


difference(){
    cylinder(h=10.5, r=r2);
    cylinder(h=10.7, r=r3);
}
difference(){
    cylinder(h=5.05,  r=r1);
    cylinder(h=10.7,  r=r3);
}
