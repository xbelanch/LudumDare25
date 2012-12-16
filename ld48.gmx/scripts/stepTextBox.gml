// send text to draw 
if (!ds_queue_empty(text))
{
    drawstr = ds_queue_head(text);
} else {
    drawstr = "";
}

// make the box visible if there's any text 

if(drawstr !="")
{
    visible = 1;
} else {
    visible = 0;
}


if(!ds_queue_empty(text) and keyboard_check_pressed(vk_enter))
{
    if(pos >= string_length(drawstr)) { //If the position is past the end of the drawstr
        //sound_play(sndNextMessage); //Play the sound for the next message. Change the sound index to your own
        ds_queue_dequeue(text);     //Remove the read string from the queue
        pos = 0;                    //Reset the position to 0
    } else {
        //Skip to the end if the string is not fully written
        pos = string_length(drawstr);
    }   
}

/*
if (objPlayer.y > 850 and ds_queue_empty(text) and room == 0 and !completed)
{
    ds_queue_enqueue(text, "This was an example of a simple dialog system");
    ds_queue_enqueue(text, "similar to Fixation...");
    completed = 1;
}

*/ 

if (room_get_name(room) == "splash" and !completed)
{
ds_queue_enqueue(text, "[PRESS ARROW KEYS TO MOVE]");
completed = 1;
}  else if (room_get_name(room) == "room3" and !completed)
{
ds_queue_enqueue(text, "[PRESS ENTER TO READ MORE]");
ds_queue_enqueue(text, "jump or don't play");
completed = 1;
} 
else if (room_get_name(room) == "room7" and !completed)
{
ds_queue_enqueue(text, "looking at calmed big goat");
completed = 1;
} else if (room_get_name(room) == "room13" and !completed)
{
ds_queue_enqueue(text, "Dear Slender?");
ds_queue_enqueue(text, "END");
ds_queue_enqueue(text, "or...");
ds_queue_enqueue(text, "Look at me");
completed = 1; 
}


// delete the box


if (ds_queue_empty(text))
{
    ds_queue_clear(text);

}


/*
if (objPlayer.y < 300 and ds_queue_empty(text))
{
    completed= 0;
    
}
*/
