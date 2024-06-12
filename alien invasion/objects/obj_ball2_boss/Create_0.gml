//@Obj_ball2_boss create event
alarm[1] = -1;

state_normal = function() {
    y += 2;
    if (y > room_height) {
        instance_destroy();
    }
};

state_split = function() {
    y += 2;
    if (y > room_height / 2) {
        instance_create_layer(x + 10, y, layer, obj_ball2_boss_split);
        instance_create_layer(x - 10, y, layer, obj_ball2_boss_split);
        instance_destroy();
    }
};

randomize();
_i = irandom(1); // This will give either 0 or 1
switch (_i) {
    case 0:
        state = state_normal;
        break;
    case 1:
        state = state_split;
        break;
}
