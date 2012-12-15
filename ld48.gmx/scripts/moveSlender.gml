// move Slender

var xx,yy,c1,c2;

// Apply gravity (and jumping)

y = y + grav;
grav+=0.4;
if( grav>=10 ) grav=10;


if( grav<0 ) // the player is jumping of falling
{
    if( dir=1){
        sprite_index = slender_jump_right;
    }else{
        sprite_index = slender_jump_left;
    }
    c2 = -1;
    c1 = getCollision(x,y);
    _c1 = c1;
    
    if( (x&$1f)>0 ) {
        c2=getCollision(x+32,y);
         _c2 = c2;
    }
    if( c1>=0 || c2>=0 )
    {
        grav=0;
        y = (y&$ffffffe0)+32;
    }
}
else{
    // Otherwise, check above player
    if( jump )
    {
        if( dir=1){
            sprite_index = slender_fall_right;
        }else{
            sprite_index = slender_fall_left;
        }    
    }else{
        grav=0;
        jump=true;
    }
    c2 = -1;
    c1 = getCollision(x,y+64);
    _c1 = c1;
    if( (x&$1f)>0 ) {
        c2=getCollision(x+32,y+64);
        _c2 = c2;
    }
    if( c1>=0 || c2>=0 )
    {
        y = (y&$ffffff3e0);
        jump= false;
        
        if( dir=1){
            sprite_index = slender_walk_right;
        }else{
            sprite_index = slender_walk_left;
        }           
    }
}   


// If moving left, check LEFT collision
// check direct (http://gmc.yoyogames.com/index.php?showtopic=561337&st=0&p=4146801&hl=+change%20+rooms&fromsearch=1&#entry4146801)

if( keyboard_check_direct(vk_left) ) /* for Win */ 

// if( keyboard_check(vk_left) )  /* for Mac */ 
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
      
}
else if( keyboard_check_direct(vk_right)) /* for win */
// else if( keyboard_check(vk_right)) /* mac */
{
    // Otherwise, check collision to the right
    dir=1;
    if(!jump){
        sprite_index = slender_walk_right;
    }
    x=x+xspeed;
    c2 = -1;
    c1 = getCollision(x+32, y);
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




