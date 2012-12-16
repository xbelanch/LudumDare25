// trying to clone the rain particle system of Don't Look Back


rain_color = make_color_rgb($97, $93, $f3);


rain = part_system_create();
part_system_depth(rain, -1000000);

raindrop = part_type_create();
part_type_sprite(raindrop, sprRain, false, false, false);
part_type_orientation(raindrop, 0, 0, 0, 0, false);
part_type_size(raindrop, 0.65, 0.65, 0, 0);
part_type_speed(raindrop, 14, 14, 0.03, 0);
part_type_direction(raindrop, 245, 245, 0, 0);
part_type_alpha2(raindrop, 1, 1);
part_type_life(raindrop, 28, 40);
part_type_blend(raindrop, false);
part_type_color2(raindrop, rain_color, rain_color);


rain_emitter = part_emitter_create(rain);
part_emitter_region(rain, rain_emitter, -100, 1000, 0, 0, ps_shape_line, ps_distr_linear);


splash_rain = part_type_create();
part_type_sprite(splash_rain, sprSplashRain, false, false, false);
part_type_size(splash_rain,1,1,0,0);
part_type_scale(splash_rain,1,1);
part_type_color1(splash_rain, rain_color);
part_type_speed(splash_rain,4,4,0,0);
part_type_direction(splash_rain,10,170,0,0);
part_type_gravity(splash_rain,0.15,270);
part_type_orientation(splash_rain,0,0,0,0,0);
part_type_blend(splash_rain,0);
part_type_life(splash_rain,30,20);
part_type_death(raindrop, 1, splash_rain);


