//this code is from GameMaker Studio demo
// I'll try to change it later. Patiente, guys! 

var xx,yy,i,t,top,left,s;

// global.mapsize equal to 360 tiles (20 x 18)
global.mapsize=floor(room_width/32)*floor(room_height/32);

// Loop through the tile map, and find the tiles, then place them 
// in the "simple" collision map.
for( yy=0;yy<room_height;yy+=32)
{
    for( xx=0;xx<room_width;xx+=32)
    {
        i = (xx/32)+((yy/32)*(room_width/32));
        global.map[i]=-1;
        // 10 is the layer number where we place the tiles
        t = tile_layer_find(10,xx,yy);
        
        if( t>=0 )
        {
            left = tile_get_left(t);
            //show_debug_message(string(left));
            global.map[i]=left/32;  
                   
        }
    }
}

