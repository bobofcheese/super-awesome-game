if texturegroup_get_status("jinx") != texturegroup_status_loaded
	alarm[0] = 1

with (all)
{
	if sprite_exists(sprite_index)
	{
		var spr = asset_get_index(sprite_get_name(sprite_index) + "_jinx")
		if sprite_exists(spr)
		{
			sprite_index = spr
		}
	}
}
// i use a de google