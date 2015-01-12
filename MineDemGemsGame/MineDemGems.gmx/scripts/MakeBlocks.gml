for(xx = 0; xx < 2560; xx+=160){
    for(yy = 64; yy < 6144; yy+=128){
        instance_create(xx,yy,obj_dirt);
    }
}