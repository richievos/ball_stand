// is a Thera Band 75cm ball
// has an actual diameter of around 68cm => 680mm
ball_radius = 340;
stand_height = 11;
stand_width = 130;

wiggle_room = 10;

difference() {
  // outer ring
  linear_extrude(height=stand_height)
    circle(r=stand_width);

  // ball
  translate([0, 0, ball_radius - 5]) {
    sphere(r=(ball_radius + wiggle_room));
  }
}