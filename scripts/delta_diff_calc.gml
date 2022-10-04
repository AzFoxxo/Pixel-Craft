#define delta_diff_calc
///delta_current();

// Return the delta difference
return global.delta_multiplyer;

#define delta_update
///delta_update();

global.delta_actual = delta_time/1000000;
global.delta_multiplyer = global.delta_actual / global.delta_target;

#define delta_init
///delta_init();

global.delta_target = 1/60;
global.delta_actual = delta_time/1000000;
global.delta_multiplyer = global.delta_actual / global.delta_target;