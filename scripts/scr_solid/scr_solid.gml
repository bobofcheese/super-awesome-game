function scr_solid(_x, _y){
if place_meeting(_x, _y, obj_solid)
	return true;

if place_meeting(_x, _y, obj_platform)
{
	var plat = instance_place(_x, _y, obj_platform)
	var bbox_height = sprite_get_height(mask_index)
	if plat.image_yscale > 0
		return yprevious < plat.bbox_top + 1;
	else if !place_meeting(xprevious, yprevious, plat)
		return (yprevious > plat.bbox_bottom + 32);
	else return false;
}

return false;
}