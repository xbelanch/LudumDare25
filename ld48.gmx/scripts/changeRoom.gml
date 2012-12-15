// change the room 
 
if (argument0 == "next") { // move to next room
    if (room_next(room) != -1)
    {
        room_goto(room_next(room));
    }  
    
    x = x - room_width + $1f;
    
} 

if (argument0 == "previous")
{

    if (room_previous(room) != -1)
    {
        room_goto(room_previous(room));
    }  
    
    x = room_width - $1f;
    
}

if (argument0 == "fall")
{
    if (room_next(room) != -1)
    {
        room_goto(room_next(room));
    } 
    
    y  = y - room_height + $1f;
}
