// trying to clone the rain particle system of Don't Look Back

rain = part_system_create();
part_system_depth(rain, -1000000);

raindrop = part_type_create();
part_type_shape(raindrop, pt_shape_line);
part_type_orientation(raindrop, 0, 0, 0, 0, true);
part_type_size(raindrop, 0.15, 0.20, 0, 0);
part_type_speed(raindrop, 7, 15, 0.05, 0);
part_type_direction(raindrop, 295, 305, 0, 0);
part_type_alpha2(raindrop, 0, 0);
part_type_life(raindrop, 150, 200);
part_type_blend(raindrop, true);
part_type_color2(raindrop, c_white, c_blue);

rain_emitter = part_emitter_create(rain);
part_emitter_region(rain, rain_emitter, 0, 640, 0, 10, ps_shape_rectangle, ps_distr_gaussian);

