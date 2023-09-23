// Auto-generated. Do not edit!

// (in-package multiwii.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Waypoint = require('./Waypoint.js');

//-----------------------------------------------------------

class Waypoints {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.number_points = null;
      this.waypoints = null;
    }
    else {
      if (initObj.hasOwnProperty('number_points')) {
        this.number_points = initObj.number_points
      }
      else {
        this.number_points = 0;
      }
      if (initObj.hasOwnProperty('waypoints')) {
        this.waypoints = initObj.waypoints
      }
      else {
        this.waypoints = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Waypoints
    // Serialize message field [number_points]
    bufferOffset = _serializer.uint8(obj.number_points, buffer, bufferOffset);
    // Serialize message field [waypoints]
    // Serialize the length for message field [waypoints]
    bufferOffset = _serializer.uint32(obj.waypoints.length, buffer, bufferOffset);
    obj.waypoints.forEach((val) => {
      bufferOffset = Waypoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Waypoints
    let len;
    let data = new Waypoints(null);
    // Deserialize message field [number_points]
    data.number_points = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [waypoints]
    // Deserialize array length for message field [waypoints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.waypoints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.waypoints[i] = Waypoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 21 * object.waypoints.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'multiwii/Waypoints';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cb869cb92178fdbaf5d0e46feaa0ac83';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 number_points
    multiwii/Waypoint[] waypoints
    ================================================================================
    MSG: multiwii/Waypoint
    uint8 wp_no
    uint8 action
    uint32 lat
    uint32 lon
    uint32 alt
    uint16 p1
    uint16 p2
    uint16 p3
    uint8 nav_flag
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Waypoints(null);
    if (msg.number_points !== undefined) {
      resolved.number_points = msg.number_points;
    }
    else {
      resolved.number_points = 0
    }

    if (msg.waypoints !== undefined) {
      resolved.waypoints = new Array(msg.waypoints.length);
      for (let i = 0; i < resolved.waypoints.length; ++i) {
        resolved.waypoints[i] = Waypoint.Resolve(msg.waypoints[i]);
      }
    }
    else {
      resolved.waypoints = []
    }

    return resolved;
    }
};

module.exports = Waypoints;
