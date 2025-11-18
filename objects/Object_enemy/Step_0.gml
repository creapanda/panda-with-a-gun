// find the playerID
var _player = instance_find(Object_player,0)

//if found the player move to them
if( _player != noone){
	
	//get the direction
    var _dir = point_direction (x, y, _player.x, _player.y);
    //And set the speed and direction of the object.
    motion_set(_dir, 1.2);
}

//prevent the enemy stacking up
var _colliding = instance_place(x, y, Object_enemy);

if _colliding {

var _dir = point_direction(_colliding.x, _colliding.y, x, y);
	motion_set(_dir, 1.2);

}


