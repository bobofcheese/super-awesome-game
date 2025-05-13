
var width = camera_get_view_width(view_camera[0]);
var height = camera_get_view_height(view_camera[0]);

if instance_exists(obj_player) {
    var camerax = obj_player.x - (width * 0.5);
    var cameray = obj_player.y - (height * 0.5);
    camera_set_view_pos(view_camera[0], clamp(camerax, 0, room_width - width), clamp(cameray, 0, room_height - height));
}