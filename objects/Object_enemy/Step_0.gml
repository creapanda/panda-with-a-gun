// === Move toward player ===
var _player = instance_find(Object_player, 0);
if (_player != noone) {
    var _dir = point_direction(x, y, _player.x, _player.y);
    motion_set(_dir, 1.2);
}

// === Prevent enemy stacking ===
var _colliding = instance_place(x, y, Object_enemy);
if (_colliding != noone) {
    var _dir2 = point_direction(_colliding.x, _colliding.y, x, y);
    motion_set(_dir2, 1.2);
}


