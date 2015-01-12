var side;
var seed = "";
var done = false;

if(spawnDirt == true){
    for(i = 0; i < 2; i++;){
        side = floor(random(7));
        if(side < 2){
            if(!place_meeting(x + 32, y, obj_block)){
                instance_create(x+32, y, obj_dirt);
                dirtCount++;
            }
        }
        else if(side == 2 || side == 3){
            if(!place_meeting(x - 32, y, obj_block)){
                instance_create(x-32, y, obj_dirt);
                dirtCount++;
            }
        }
        else if(side == 4){
            if(!place_meeting(x, y + 32, obj_block)){
                instance_create(x, y+32, obj_dirt);
                dirtCount++;
            }
        }
        else if(side == 5){
            if(!place_meeting(x, y - 32, obj_block)){
                instance_create(x, y-32, obj_dirt);
                dirtCount++;
            }
        }
        
        side = string(side);
        seed = ""+side;
        show_debug_message(seed);
        
    }
    done = true;
}
if(done){
seedFile=file_text_open_write("seed.txt");
file_text_write_real(seedFile,seed);
file_text_close(seedFile);
}
