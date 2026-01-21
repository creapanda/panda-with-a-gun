move_speed = 3;
xsp = 0;
ysp = 0;
shoot_timer = 0;
shoot_delay = room_speed * 1; // 1 second
last_dir_x = 0;
last_dir_y = -1;

//this is what we use for collison with exp
player_exp = 0;
player_level = 1;

exp_needed = 2;        // EXP for level 2
exp_growth = 1.5;      // cost multiplier per level

show_popup = false;
popup_timer = 0;
