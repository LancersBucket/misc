x = room_width/2
y = room_height/2

file = get_open_filename("image|*.png|*.jpg|*.jpeg","")
s3 = sprite_add(file,1,false,false,0,0)
sprite_set_offset(s3,sprite_get_width(s3)/2,sprite_get_height(s3)/2)
//object_set_sprite(oimage,s3)

sprite_index = s3
