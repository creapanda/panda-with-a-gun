// spawn enemy every 3 seconds
if (!variable_global_exists("spawn_timer")) global.spawn_timer = 0;

global.spawn_timer += 2;

if (global.spawn_timer >= room_speed * 5)
{
    
	var xx = irandom_range(0, room_width);
	var yy = irandom_range(0, room_height);

	instance_create_layer(xx, yy, "Instances",Object_enemy );
    global.spawn_timer = 0;
}
