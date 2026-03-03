// spawn enemy every 3 seconds 
// -1 sec every 10 spawn minimum 1 sec
if (!variable_global_exists("spawn_timer")) global.spawn_timer = 0;
if (count = 15)
{
	time = time + 0.5;
}
global.spawn_timer += time;

//if (global.spawn_timer >= room_speed * 5)
//{
    
	//var xx = irandom_range(0, room_width);
	//var yy = irandom_range(0, room_height);

	//instance_create_layer(xx, yy, "Instances",Object_enemy );
   // global.spawn_timer = 0;
	//count ++;
//}
if (global.spawn_timer >= room_speed * 5)
{
    var margin = 32; // how far outside the screen to spawn
    var side = irandom(3); // 0=top, 1=bottom, 2=left, 3=right
    
    var xx, yy;
    
    switch (side)
    {
        case 0: // TOP
            xx = irandom(room_width);
            yy = -margin;
        break;
        
        case 1: // BOTTOM
            xx = irandom(room_width);
            yy = room_height + margin;
        break;
        
        case 2: // LEFT
            xx = -margin;
            yy = irandom(room_height);
        break;
        
        case 3: // RIGHT
            xx = room_width + margin;
            yy = irandom(room_height);
        break;
    }

    instance_create_layer(xx, yy, "Instances", Object_enemy);
    
    global.spawn_timer = 0;
    count++;
}