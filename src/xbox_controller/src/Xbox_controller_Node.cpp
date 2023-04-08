#include <xbox_controller/Xbox_controller_Node.h>

void XboxController::setup(){
    drone_armed = 0;
    drone_horizon = 0;
    drone_altitude_hold = 0;
    drone_calib = 0;
    drone_position_hold = 0;

    drone_controller_pub = nh.advertise<mavros_msgs::OverrideRCIn>("rc/override/raw",1);
    joy_sub = nh.subscribe("/joy", 10, &XboxController::joyCallback, this);
}

void XboxController::updateRC(){
    drone_controller_pub.publish(rc_in);
}

void XboxController::changeState(const int32_t &input, int &mode, uint16_t &output, uint16_t output_state_1, uint16_t output_state_2){
    if (input==1)
        mode = !mode;
    output = mode*output_state_1 + !mode*output_state_2;
}

void XboxController::calibRollandYaw(const int32_t &input){
    if (input==1)
        if (drone_calib==0){
            std::string cmd;

            cmd = "rosrun dynamic_reconfigure dynparam set /Xbox_controller_Node channel_0_default ";
            cmd+=std::to_string(rc_in.channels[0]);
            std::system(cmd.c_str());

            cmd = "rosrun dynamic_reconfigure dynparam set /Xbox_controller_Node channel_1_default ";
            cmd+=std::to_string(rc_in.channels[1]);
            std::system(cmd.c_str());

            ROS_INFO_STREAM("SAVED");
            drone_calib=1;
        }
}

void XboxController::joyCallback(const sensor_msgs::Joy::ConstPtr &joy){

    channel_0_max = channel_0_default + channel_0_range;
    channel_1_max = channel_1_default + channel_1_range;
    // channel_2_max = channel_2_default + channel_2_range;
    channel_3_max = channel_3_default + channel_3_range;

    channel_0_min = channel_0_default - channel_0_range;
    channel_1_min = channel_1_default - channel_1_range;
    // channel_2_min = channel_2_default - channel_2_range;
    channel_3_min = channel_3_default - channel_3_range;


    rc_in.channels[0] = static_cast<uint16_t>(map(joy->axes[left_right_axis_stick_right]*(-1), -1.00, 1.00, channel_0_min, channel_0_max));
    rc_in.channels[1] = static_cast<uint16_t>(map(joy->axes[up_down_axis_stick_right], -1.00, 1.00, channel_1_min, channel_1_max));

    if (joy->axes[up_down_axis_stick_left]<=0)
        rc_in.channels[2] = static_cast<uint16_t>(map(joy->axes[up_down_axis_stick_left], -1.00, 0.00, channel_2_min, channel_2_max));
    if (joy->axes[up_down_axis_stick_left]>0)
        rc_in.channels[2] = static_cast<uint16_t>(map(joy->axes[up_down_axis_stick_left], 0, 1.00, channel_2_max, channel_2_max+channel_2_range));

    rc_in.channels[3] = static_cast<uint16_t>(map(joy->axes[left_right_axis_stick_left], -1.00, 1.00, channel_3_min, channel_3_max));

    channel_0_default = channel_0_default + static_cast<uint16_t>(map(joy->axes[cross_left_right]*(-1), -1.00, 1.00, -5, 5));
    channel_1_default = channel_1_default + static_cast<uint16_t>(map(joy->axes[cross_up_down], -1.00, 1.00, -5, 5));

    auto button_Y = joy->buttons[Y];
    changeState(button_Y, drone_armed, rc_in.channels[4], 1500, 1000);

    auto button_B = joy->buttons[B];
    changeState(button_B, drone_horizon, rc_in.channels[5], 1500, 1000);

    auto button_A = joy->buttons[A];
    changeState(button_A, drone_altitude_hold, rc_in.channels[6], 1500, 1000);

    auto button_X = joy->buttons[X];
    changeState(button_X, drone_position_hold, rc_in.channels[7], 1500, 1000);


    auto button_RB = joy->buttons[RB];
    calibRollandYaw(button_RB);
    if (button_RB==0 && drone_calib==1)
    {
        drone_calib = 0;
    }

    updateRC();
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "Xbox_controller");

    XboxController controller;
    dynamic_reconfigure::Server<xbox_controller::Controller_initConfig> server;
    dynamic_reconfigure::Server<xbox_controller::Controller_initConfig>::CallbackType f;
    f = boost::bind(&paramCallback, _1, _2, &controller);
    server.setCallback(f);

    ros::AsyncSpinner spinner(3);
    spinner.start();
    ros::Rate r(50);
    while(ros::ok()){
        controller.updateRC();
        r.sleep();
    }
    ros::waitForShutdown();
}