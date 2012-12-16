if(drawstr != "") {

    
    //Draw the text, scrolling across the box
    draw_set_alpha(1.0);
    draw_set_font(Aansa); //Set the font, -1 is default. Put the index of one of your own fonts to use it instead
    draw_set_color(c_white); //Set the colour to black. Change the colour to whatever you like best
   // draw_self(); //Draw the box behind the text
    cstr = string_copy(drawstr,1,pos); //Take only the portion of the text up to the current position
    if (room_get_name(room) == "splash") {
        draw_text_ext_transformed(x+110,y+116,cstr,-1,-1,1,1,0); //Draw the shortened string
    } else if (room_get_name(room) == "room3") {
        draw_text_ext_transformed(x+210,y+116,cstr,-1,-1,1,1,0); //Draw the shortened string
    } else if (room_get_name(room) == "room7") {
        draw_text_ext_transformed(x+110,y+116,cstr,-1,-1,1,1,0); //Draw the shortened string
    }  else if (room_get_name(room) == "room13") {
        draw_text_ext_transformed(x+110,y+136,cstr,-1,-1,1,1,0); //Draw the shortened string
    }
    pos += 0.9; //Move the position to farther. Change this to make the text move at a different speed
} 
