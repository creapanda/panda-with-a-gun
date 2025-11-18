var h = keyboard_check(vk_right) - keyboard_check(vk_left);
var v = keyboard_check(vk_down) - keyboard_check(vk_up);

// ----------- HORIZONTAL MOVEMENT -----------
if (h != 0)
{
    // Try to move
    if (!place_meeting(x + h * move_speed, y, Object_block))
    {
        x += h * move_speed;
    }
    else
    {
        // Slide along walls
        while (!place_meeting(x + sign(h), y, Object_block))
        {
            x += sign(h);
        }
    }
}

// ----------- VERTICAL MOVEMENT -----------
if (v != 0)
{
    if (!place_meeting(x, y + v * move_speed, Object_block))
    {
        y += v * move_speed;
    }
    else
    {
        while (!place_meeting(x, y + sign(v), Object_block))
        {
            y += sign(v);
        }
    }
}

if (place_meeting(x, y, Object_enemy))
{
    room_restart();
}