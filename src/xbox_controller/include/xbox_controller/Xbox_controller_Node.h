#pragma once

#include <ros/ros.h>
#include <sensor_msgs/Joy.h>
#include <mavros_msgs/OverrideRCIn.h>
#include <xbox_controller/Map.h>

#include <string>
#include <dynamic_reconfigure/server.h>
#include <xbox_controller/Controller_initConfig.h>

enum ControllerStick
{
    left_right_axis_stick_left = 0,
    up_down_axis_stick_left,
    left_right_axis_stick_right,
    up_down_axis_stick_right,

    cross_left_right = 6,
    cross_up_down
};

enum ControllerButton
{
    A = 0,
    B,
    X = 3,
    Y,
    LB = 6,
    RB
};

class XboxController
{
private:
    ros::NodeHandle nh;
    ros::Publisher drone_controller_pub;
    ros::Subscriber joy_sub;

    int drone_armed;
    int drone_horizon;
    int drone_altitude_hold;
    int drone_calib;
    int drone_position_hold;

    mavros_msgs::OverrideRCIn rc_in;


public:
    uint16_t channel_0_default;
    uint16_t channel_1_default;
    // uint16_t channel_2_default;
    uint16_t channel_3_default;

    uint16_t channel_0_range;
    uint16_t channel_1_range;
    uint16_t channel_2_range;
    uint16_t channel_3_range;

    uint16_t channel_0_max;
    uint16_t channel_0_min;
    uint16_t channel_1_max;
    uint16_t channel_1_min;
    uint16_t channel_2_max;
    uint16_t channel_2_min; 
    uint16_t channel_3_max;
    uint16_t channel_3_min;

    XboxController(){
        nh = ros::NodeHandle("~");
        setup();
    }

    void setup();
    void changeState(const int32_t &input, int &mode, uint16_t &output, uint16_t output_state_1, uint16_t output_state_2);
    void calibRollandYaw(const int32_t &input);
    void updateRC();
    void joyCallback(const sensor_msgs::Joy::ConstPtr &joy);
};

void paramCallback(xbox_controller::Controller_initConfig &config, uint32_t level, XboxController *xboxcontroller){
    // ROS_INFO_STREAM("channel_0_default: " <<config.channel_0_default);
    // ROS_INFO_STREAM("channel_0_range: " <<config.channel_0_range);
    xboxcontroller->channel_0_default = static_cast<uint16_t>(config.channel_0_default);
    xboxcontroller->channel_0_range = static_cast<uint16_t>(config.channel_0_range);
    // xboxcontroller->channel_0_max = static_cast<uint16_t>(config.channel_0_default+config.channel_0_range);
    // xboxcontroller->channel_0_min = static_cast<uint16_t>(config.channel_0_default-config.channel_0_range);

    // ROS_INFO_STREAM("channel_1_default: " <<config.channel_1_default);
    // ROS_INFO_STREAM("channel_1_range: " <<config.channel_1_range);
    xboxcontroller->channel_1_default = static_cast<uint16_t>(config.channel_1_default);
    xboxcontroller->channel_1_range = static_cast<uint16_t>(config.channel_1_range);
    // xboxcontroller->channel_1_max = static_cast<uint16_t>(config.channel_1_default+config.channel_1_range);
    // xboxcontroller->channel_1_min = static_cast<uint16_t>(config.channel_1_default-config.channel_1_range);

    // ROS_INFO_STREAM("channel_2_max: " <<config.channel_2_max);
    xboxcontroller->channel_2_max = static_cast<uint16_t>(config.channel_2_max);
    xboxcontroller->channel_2_min = static_cast<uint16_t>(config.__getMin__().channel_2_max);
    xboxcontroller->channel_2_range = static_cast<uint16_t>(config.channel_2_range);

    // ROS_INFO_STREAM("channel_3_default: " <<config.channel_3_default);
    // ROS_INFO_STREAM("channel_3_range: " <<config.channel_3_range);
    xboxcontroller->channel_3_default = static_cast<uint16_t>(config.channel_3_default);
    xboxcontroller->channel_3_range = static_cast<uint16_t>(config.channel_3_range);
    // xboxcontroller->channel_3_max = static_cast<uint16_t>(config.channel_3_default+config.channel_3_range);
    // xboxcontroller->channel_3_min = static_cast<uint16_t>(config.channel_3_default-config.channel_3_range);
}