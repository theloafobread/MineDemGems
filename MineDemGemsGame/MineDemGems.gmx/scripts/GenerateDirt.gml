var side;
var r1;
var done = false;

if(spawnDirt){
    for(i = 0; i < 3; i++;)
    {
        side = floor(random(6));
        r1 = floor(random(2));
        if(side < 2){
            if(!place_meeting(x + 32, y, obj_block) && !place_meeting(x + 32, y, obj_water)){
                if(r1 == 0){
                    instance_create(x+32, y, obj_dirt);
                    dirtCount++;
                }
            }
        }
        else if(side == 2 || side == 3){
            if(!place_meeting(x - 32, y, obj_block) && !place_meeting(x - 32, y, obj_water)){
                if(r1 == 0){
                    instance_create(x-32, y, obj_dirt);
                    dirtCount++;
                }
            }
        }
        else if(side == 4){
            if(!place_meeting(x, y + 32, obj_block) && !place_meeting(x, y + 32, obj_water)){
                if(r1 == 0){
                    instance_create(x, y+32, obj_dirt);
                    dirtCount++;
                }
            }
        }
        else if(side == 5){
            if(!place_meeting(x, y - 32, obj_block) && !place_meeting(x, y - 32, obj_water)){
                if(r1 == 0){
                    instance_create(x, y-32, obj_dirt);
                    dirtCount++;
                }
            }
        }
        
        //side = string(side);
        seed = seed + string(side);
        //show_debug_message(seed);
    }
       show_debug_message(string(dirtCount));
        done = true;
}