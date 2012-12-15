//
// argument0 = X coordinate to get tile (in pixels, not tiles)
// argument1 = Y coordinate to get tile (in pixels, not tiles)
//

// changeRoom(1) -> next room
// changeRoom(0) -> previous room

if( argument0>=room_width + $f ) changeRoom("next");
if( argument1>=room_height + $f) changeRoom("fall");
if( argument0< -$f) changeRoom("previous");
if( argument1<0) return -1;


var xx,yy;

xx = floor(argument0/32) + (floor(argument1/32) * floor(room_width/32));
if( global.mapsize<xx ) return -1;
return global.map[ xx ];
