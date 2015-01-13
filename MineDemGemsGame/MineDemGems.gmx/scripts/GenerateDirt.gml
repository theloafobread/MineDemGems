var side;
var r1;
var done = false;
   // for(i = 0; i < 4; i++;)
   //{
        side = floor(random(5));
        r1 = floor(random(3));
        if(side < 2){
            if(!place_meeting(x + 32, y, obj_block)){
                if(r1 < 2){
                    instance_create(x+32, y, obj_dirt);
                    instance_create(x+64, y, obj_dirt);
                    //dirtCount++;
                }
            }
        }
        else if(side == 2 || side == 3){
            if(!place_meeting(x - 32, y, obj_block)){
                if(r1 < 2){
                    instance_create(x-32, y, obj_dirt);
                    instance_create(x-64, y, obj_dirt);
                    //dirtCount++;
                }
            }
        }
        else if(side == 4){
            if(!place_meeting(x, y + 32, obj_block)){
                if(r1 < 2){
                    instance_create(x, y+32, obj_dirt);
                    instance_create(x, y+64, obj_dirt);
                    //dirtCount++;
                }
            }
        }
        else if(side == 5){
            if(!place_meeting(x, y - 32, obj_block)){
                if(r1 < 2){
                    instance_create(x, y-32, obj_dirt);
                    instance_create(x, y-64, obj_dirt);
                    //dirtCount++;
                }
            }
        }
        
        //side = string(side);
        //seed = seed + string(side);
        //show_debug_message(seed);
   // }
       //show_debug_message(string(dirtCount));
        done = true;
