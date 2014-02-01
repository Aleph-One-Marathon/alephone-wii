#include "FilmProfile.h"

#include "Plugins.h"

static FilmProfile alephone1_1 = {
	true, // keyframe_fix
	false, // damage_aggressor_last_in_tag
	true, // swipe_nearby_items_fix
	true, // initial_monster_fix
	true, // long_distance_physics
	true, // animate_items
	true, // inexplicable_pin_change
	false, // increased_dynamic_limits_1_0
	true, // increased_dynamic_limits_1_1
	true, // line_is_obstructed_fix
	false, // a1_smg
	true, // infinity_smg
	true, // use_vertical_kick_threshold
	true, // infinity_tag_fix
	true, // adjacent_polygons_always_intersect
	true, // early_object_initialization
	true, // fix_sliding_on_platforms
	true, // prevent_dead_projectile_owners
	true, // validate_random_ranged_attack
	true, // allow_short_kamikaze
	true, // ketchup_fix
	false, // lua_increments_rng
	true, // destroy_players_ball_fix
	true, // calculate_terminal_lines_correctly
	true, // key_frame_zero_shrapnel_fix
	true, // count_dead_dropped_items_correctly
};

static FilmProfile alephone1_0 = {
	true, // keyframe_fix
	true, // damage_aggressor_last_in_tag
	true, // swipe_nearby_items_fix
	true, // initial_monster_fix
	true, // long_distance_physics
	true, // animate_items
	true, // inexplicable_pin_change
	true, // increased_dynamic_limits_1_0
	false, // increased_dynamic_limits_1_1
	false, // line_is_obstructed_fix
	true, // a1_smg
	false, // infinity_smg
	false, // use_vertical_kick_threshold
	false, // infinity_tag_fix
	false, // adjacent_polygons_always_intersect
	true, // early_object_initialization
	false, // fix_sliding_on_platforms
	false, // prevent_dead_projectile_owners
	false, // validate_random_ranged_attack
	false, // allow_short_kamikaze
	false, // ketchup_fix
	true, // lua_increments_rng
	false, // destroy_players_ball_fix
	false, // calculate_terminal_lines_correctly
	false, // key_frame_zero_shrapnel_fix
	false, // count_dead_dropped_items_correctly
};

static FilmProfile marathon2 = {
	false, // keyframe_fix
	false, // damage_aggressor_last_in_tag
	false, // swipe_nearby_items_fix
	false, // initial_monster_fix
	false, // long_distance_physics
	false, // animate_items
	false, // inexplicable_pin_change
	false, // increased_dynamic_limits_1_0
	false, // increased_dynamic_limits_1_1
	false, // line_is_obstructed
	false, // a1_smg
	false, // infinity_smg
	true, // use_vertical_kick_threshold
	false, // infinity_tag_fix
	false, // adjacent_polygons_always_intersect
	false, // early_object_initialization
	false, // fix_sliding_on_platforms
	false, // prevent_dead_projectile_owners
	false, // validate_random_ranged_attack
	false, // allow_short_kamikaze
	false, // ketchup_fix
	false, // lua_increments_rng
	false, // destroy_players_ball_fix
	false, // calculate_terminal_lines_correctly
	false, // key_frame_zero_shrapnel_fix
	false, // count_dead_dropped_items_correctly
};

static FilmProfile marathon_infinity = {
	false, // keyframe_fix
	false, // damage_aggressor_last_in_tag
	false, // swipe_nearby_items_fix
	true, // initial_monster_fix
	false, // long_distance_physics
	false, // animate_items
	false, // inexplicable_pin_change
	false, // increased_dynamic_limits_1_0
	false, // increased_dynamic_limits_1_1
	true, // line_is_obstructed_fix
	false, // a1_smg
	true, // infinity_smg
	true, // use_vertical_kick_threshold
	true, // infinity_tag_fix
	true, // adjacent_polygons_always_intersect
	false, // early_object_initialization
	false, // fix_sliding_on_platforms
	false, // prevent_dead_projectile_owners
	false, // validate_random_ranged_attack
	false, // allow_short_kamikaze
	false, // ketchup_fix
	false, // lua_increments_rng
	false, // destroy_players_ball_fix
	false, // calculate_terminal_lines_correctly
	false, // key_frame_zero_shrapnel_fix
	false, // count_dead_dropped_items_correctly
};

FilmProfile film_profile = alephone1_1;

extern void LoadBaseMMLScripts();
extern void ResetAllMMLValues();

void load_film_profile(FilmProfileType type, bool reload_mml)
{
	switch (type)
	{
	case FILM_PROFILE_DEFAULT:
		film_profile = alephone1_1;
		break;
	case FILM_PROFILE_MARATHON_2:
		film_profile = marathon2;
		break;
	case FILM_PROFILE_MARATHON_INFINITY:
		film_profile = marathon_infinity;
		break;
	case FILM_PROFILE_ALEPH_ONE_1_0:
		film_profile = alephone1_0;
		break;
	}	

	if (reload_mml)
	{
		ResetAllMMLValues();
		LoadBaseMMLScripts();
		Plugins::instance()->load_mml();
	}
}

