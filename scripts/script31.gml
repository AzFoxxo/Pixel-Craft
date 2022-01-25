///scr_showcase_level_layout();

// Ground draw
var xpos = 0;
var ypos = (room_height - 32);
var pos = 0;
repeat (256 div 16) {
       instance_create(xpos,ypos,Ground);
       xpos += 32;
       pos = xpos;
}

// Tree draw
xpos = 0;
ypos = (room_height - 64);
repeat (256 div 32) {
       instance_create(xpos,ypos,Tree);
       xpos += 64;
}

// Rock draw
xpos = 32;
ypos = (room_height - 64);
repeat (256 div 32) {
       instance_create(xpos,ypos,Rock);
       xpos += 64;
}

// Life draw
xpos = 32;
ypos = (room_height - 96);
repeat (3) {
       var inst = instance_create(xpos + 16,ypos + 16,Life);
       xpos += 96;
       with (inst) {
            xx = xstart;
            yy = ystart;
       }
}

// Enemy draw
ypos = (room_height - 64);
repeat (2) {
       var inst = instance_create(xpos,ypos,Enemy);
       xpos += 120;
       with (inst) {
            xx = xstart;
            yy = ystart;
       }
}

// Ground hill layer one draw
var pos = xpos;
xpos -= 32;
ypos = (room_height - 32);
repeat (8) {
       instance_create(xpos,ypos,Ground);
       xpos += 32;
}

// Ground hill layer two draw
xpos = pos + 32;
ypos = (room_height - 64);
repeat (5) {
       instance_create(xpos,ypos,Ground);
       xpos += 32;
}

// Ground hill layer three draw
xpos = pos + 32;
xpos += 32;
ypos = (room_height - 96);
repeat (3) {
       instance_create(xpos,ypos,Ground);
       xpos += 32;
}

// Ground hill layer four draw
xpos = pos + 32;
ypos = (room_height - 128);
xpos += 64;
repeat (1) {
       instance_create(xpos,ypos,Ground);
}

// Goal final hill layer five draw
repeat (1) {
       ypos -= 32;
       instance_create(xpos,ypos,Goal);
}

// Move the player
x = irandom_range(256, 560);

