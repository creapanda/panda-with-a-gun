// ----------- MOVEMENT -----------
var h = keyboard_check(vk_right) - keyboard_check(vk_left);
var v = keyboard_check(vk_down) - keyboard_check(vk_up);

if (h != 0)
{
    if (!place_meeting(x + h * move_speed, y, Object_block))
        x += h * move_speed;
    else
        while (!place_meeting(x + sign(h), y, Object_block)) x += sign(h);
}

if (v != 0)
{
    if (!place_meeting(x, y + v * move_speed, Object_block))
        y += v * move_speed;
    else
        while (!place_meeting(x, y + sign(v), Object_block)) y += sign(v);
}

// ----------- RECORD LAST MOVEMENT DIRECTION -----------
if (h != 0 || v != 0)
{
    last_dir_x = sign(h);
    last_dir_y = sign(v);
}

// ----------- AUTO SHOOT TIMER -----------
shoot_timer += 1;

// Always shoot in last movement direction
if (shoot_timer >= shoot_delay)
{
    var b = instance_create_layer(x, y, "Instances", Object_bullet);
    b.hsp = last_dir_x * 6;
    b.vsp = last_dir_y * 6;

    shoot_timer = 0;
}

// ----------- ENEMY COLLISION -----------
if (place_meeting(x, y, Object_enemy))
{
    room_restart();
}
