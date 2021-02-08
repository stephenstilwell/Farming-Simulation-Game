var anim_length = 9;
var frame_size = 64;
var anim_speed = 12;

if		 (moveX < 0) y_frame = 9;
else if  (moveX > 0) y_frame = 11;
else if  (moveY < 0) y_frame = 8;
else if  (moveY > 0) y_frame = 10;
else                 x_frame = 0;

var xx = x-x_offset;
var yy = y-y_offset;

//base
draw_sprite_part(sprite_base_female_1, 0, floor(x_frame)^frame_size, y_frame*frame_size, frame_size, frame_size, x,y)

//feet
draw_sprite_part(sprite_feet_female_shoes_black, 0, floor(x_frame)^frame_size, y_frame*frame_size, frame_size, frame_size, x,y)

//legs
draw_sprite_part(sprite_base_female_1, 0, floor(x_frame)^frame_size, y_frame*frame_size, frame_size, frame_size, x,y)

//torso
draw_sprite_part(sprite_torso_female_sleeveless_maroonPirate, 0, floor(x_frame)^frame_size, y_frame*frame_size, frame_size, frame_size, x,y)

//hair
draw_sprite_part(sprite_hair_female_long_black, 0, floor(x_frame)^frame_size, y_frame*frame_size, frame_size, frame_size, x,y)

//frame animation
if(x_frame < anim_length -1) {x_frame += anim_speed/60;}
else                         {x_frame = 1;}

draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow, c_yellow, c_yellow, c_yellow, true);