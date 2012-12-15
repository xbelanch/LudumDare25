// move Slender

var xx,yy,c1,c2;



// Apply gravity (and jumping)
/*
y = y + grav;
grav+=0.4;
if( grav>=10 ) grav=10;
*/

// If moving left, check LEFT collision
if( keyboard_check(vk_left) ) 
{
    dir=-1;
    if(!jump){
        sprite_index = slender_walk_left;
    }
    x=x-xspeed;
    c2=-1;
    c1 = getCollision(x,y);
    _c1 = c1;
    if( (y&$1f)>0 ) c2=getCollision(x,y+32);
    _c2 = c2;
    if( c1>=0 ) || ( c2>=0 )
    {
        x = (x&$ffffffe0)+32;
    }
      
}else if( keyboard_check(vk_right) )
{
    // Otherwise, check collision to the right
    dir=1;
    if(!jump){
        sprite_index = slender_walk_right;
    }
    x=x+xspeed;
    c2 = -1;
    c1 = getCollision(x+32,y);
    _c1 = c1;
    if( (y&$1f)>0 ) c2=getCollision(x+32,y+32);
    _c2 = c2;
    if(  c1>=0 ) || ( c2>=0 )
    {
        // always minus 0x1f (32) when player collides 
        x = (x&$ffffffe0);
    }   
} else {
    // If standing still, don't animate
    image_index =0;
}




