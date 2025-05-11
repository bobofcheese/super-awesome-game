texturegroup_load("jinx")
with (all)
{
	if sprite_exists(sprite_index)
	{
		var spr = sprite_get_name(sprite_index) + "_jinx"
		if sprite_exists(asset_get_index(spr))
		{
			sprite_index = asset_get_index(spr)
		}
	}
}
// bottom is required??? otherwise the above code just doesnt work :fire:
var _1 = [spr_goal_jinx, spr_playernewgen_jinx, spr_solid_jinx]
