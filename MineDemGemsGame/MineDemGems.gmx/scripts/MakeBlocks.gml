#define MakeBlocks

for(xx = 0; xx < 2560; xx+=128){
    for(yy = 128; yy < 6144; yy+=128){
        instance_create(xx,yy,obj_dirt);
    }
}

#define script1
