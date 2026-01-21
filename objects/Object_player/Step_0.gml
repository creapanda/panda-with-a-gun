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



// ----------- AUTO SHOOT TIMER -----------
// Delta time in seconds
var dt = delta_time / 1000000;
// Update timer
shoot_timer += dt;

if (shoot_timer >= shoot_delay)
{
    var target = instance_nearest(x, y, Object_enemy);

    if (target != noone)
    {
        var b = instance_create_layer(x, y, "Instances", Object_bullet);
        b.direction = point_direction(x, y, target.x, target.y);
        b.target = target;
    }

    shoot_timer -= shoot_delay; // keep leftover time
}

// ----------- ENEMY COLLISION -----------
if (place_meeting(x, y, Object_enemy))
{
    room_restart();
}


// ----------- EXP COLLISION -----------
// Level up check
if (player_exp >= exp_needed && !show_popup)
{
    player_exp -= exp_needed;
    player_level += 1;

    exp_needed = ceil(exp_needed * exp_growth);

    show_popup = true;
    popup_timer = 120; // 2 seconds
	//increase the shooting rate
	if (shoot_upgrade < shoot_delay)
	{
		
		shoot_delay -= shoot_upgrade;
	}	
}

// Popup timer
if (show_popup)
{
    popup_timer--;
    if (popup_timer <= 0)
    {
        show_popup = false;
    }
}
