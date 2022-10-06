///instance_create_safety_number_checked(x, y, object);

if (instance_count < 2500)
    instance_create(argument0, argument1, argument2);
else
    show_debug_message("Dangerous number of instances reached! Instance count: " + string(instance_count));
