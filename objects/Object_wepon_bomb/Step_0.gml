if (bomb_count >= 10)
{
    bomb_count = 0;

    // create shockwave effect
    instance_create_layer(x, y, "Instances", Object_shockwave);

    // destroy everything except the player
    with (all)
    {
        if (object_index != Object_player || object_index != Object_block)
        {
            instance_destroy();
        }
    }
}