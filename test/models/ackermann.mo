model Ackermann "Ackermann rover"
    parameter Real world_declination = 0.3;
    parameter Real wheel_seperation = 0.232;
    parameter Real wheel_base = 0.275;
    parameter Real wheel_radius = 0.058;
    parameter Real wheel_width = 0.06;
    parameter Real wheel_mass = 0.146;
    parameter Real wheel_max_turn_angle = 0.6;
    parameter Real chassis_mass = 4.5;
    parameter Real chassis_width = 0.2;
    parameter Real chassis_height = 0.2;
    parameter Real chassis_length = 0.35;
    parameter Real wheel_max_rotational_rate = 300;
    parameter Real wheel_inertia_ixx = (wheel_mass/12)*(3*(wheel_radius^2)+(wheel_width^2));
    parameter Real wheel_inertia_iyy = (wheel_mass/12)*(3*(wheel_radius^2)+(wheel_width^2));
    parameter Real wheel_inertia_izz = (wheel_mass/2)*(wheel_radius^2);
    parameter Real chassis_inertia_ixx = (chassis_mass/12)*((chassis_height^2)+(chassis_width^2));
    parameter Real chassis_inertia_iyy = (chassis_mass/12)*((chassis_height^2)+(chassis_length^2));
    parameter Real chassis_inertia_izz = (chassis_mass/12)*((chassis_width^2)+(chassis_length^2));
    parameter Real model_pos_z = (world_declination*wheel_base)+(chassis_height/2)+(wheel_radius);
    parameter Real wheels_pos_z = -(chassis_height/2);
    parameter Real wheels_front_pos_x = wheel_base/2;
    parameter Real wheels_rear_pos_x = -wheel_base/2;
    parameter Real wheels_right_pos_y = -wheel_seperation/2;
    parameter Real wheels_left_pos_y = wheel_seperation/2;
    output Real x;
    output Real y;
    output Real theta;
    input Real u;
    input Real omega;
equation
    der(x) = u*cos(theta);
    der(y) = u*sin(theta);
    der(theta) = omega;
end Ackermann;
