// Homing toward target
if (target != noone && instance_exists(target))
{
    var dir = point_direction(x, y, target.x, target.y);
    direction = lerp(direction, dir, 0.15);
}

// Constant-speed movement (NO acceleration)
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);




