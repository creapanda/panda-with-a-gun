// Only spawn a bomb if none exist
if (!instance_exists(Object_wepon_bomb))
{
    var xx = irandom(room_width);
    var yy = irandom(room_height);

    instance_create_layer(xx, yy, "Instances", Object_wepon_bomb);
}