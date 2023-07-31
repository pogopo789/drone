// Auto-generated. Do not edit!

// (in-package multiwii.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Waypoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.wp_no = null;
      this.action = null;
      this.lat = null;
      this.lon = null;
      this.alt = null;
      this.p1 = null;
      this.p2 = null;
      this.p3 = null;
      this.nav_flag = null;
    }
    else {
      if (initObj.hasOwnProperty('wp_no')) {
        this.wp_no = initObj.wp_no
      }
      else {
        this.wp_no = 0;
      }
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = 0;
      }
      if (initObj.hasOwnProperty('lat')) {
        this.lat = initObj.lat
      }
      else {
        this.lat = 0;
      }
      if (initObj.hasOwnProperty('lon')) {
        this.lon = initObj.lon
      }
      else {
        this.lon = 0;
      }
      if (initObj.hasOwnProperty('alt')) {
        this.alt = initObj.alt
      }
      else {
        this.alt = 0;
      }
      if (initObj.hasOwnProperty('p1')) {
        this.p1 = initObj.p1
      }
      else {
        this.p1 = 0;
      }
      if (initObj.hasOwnProperty('p2')) {
        this.p2 = initObj.p2
      }
      else {
        this.p2 = 0;
      }
      if (initObj.hasOwnProperty('p3')) {
        this.p3 = initObj.p3
      }
      else {
        this.p3 = 0;
      }
      if (initObj.hasOwnProperty('nav_flag')) {
        this.nav_flag = initObj.nav_flag
      }
      else {
        this.nav_flag = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Waypoint
    // Serialize message field [wp_no]
    bufferOffset = _serializer.uint8(obj.wp_no, buffer, bufferOffset);
    // Serialize message field [action]
    bufferOffset = _serializer.uint8(obj.action, buffer, bufferOffset);
    // Serialize message field [lat]
    bufferOffset = _serializer.uint32(obj.lat, buffer, bufferOffset);
    // Serialize message field [lon]
    bufferOffset = _serializer.uint32(obj.lon, buffer, bufferOffset);
    // Serialize message field [alt]
    bufferOffset = _serializer.uint32(obj.alt, buffer, bufferOffset);
    // Serialize message field [p1]
    bufferOffset = _serializer.uint16(obj.p1, buffer, bufferOffset);
    // Serialize message field [p2]
    bufferOffset = _serializer.uint16(obj.p2, buffer, bufferOffset);
    // Serialize message field [p3]
    bufferOffset = _serializer.uint16(obj.p3, buffer, bufferOffset);
    // Serialize message field [nav_flag]
    bufferOffset = _serializer.uint8(obj.nav_flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Waypoint
    let len;
    let data = new Waypoint(null);
    // Deserialize message field [wp_no]
    data.wp_no = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [action]
    data.action = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lat]
    data.lat = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [lon]
    data.lon = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [alt]
    data.alt = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [p1]
    data.p1 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [p2]
    data.p2 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [p3]
    data.p3 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [nav_flag]
    data.nav_flag = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'multiwii/Waypoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cadd3e271d812dac2f4b57212407a0e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Waypoint(null);
    if (msg.wp_no !== undefined) {
      resolved.wp_no = msg.wp_no;
    }
    else {
      resolved.wp_no = 0
    }

    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = 0
    }

    if (msg.lat !== undefined) {
      resolved.lat = msg.lat;
    }
    else {
      resolved.lat = 0
    }

    if (msg.lon !== undefined) {
      resolved.lon = msg.lon;
    }
    else {
      resolved.lon = 0
    }

    if (msg.alt !== undefined) {
      resolved.alt = msg.alt;
    }
    else {
      resolved.alt = 0
    }

    if (msg.p1 !== undefined) {
      resolved.p1 = msg.p1;
    }
    else {
      resolved.p1 = 0
    }

    if (msg.p2 !== undefined) {
      resolved.p2 = msg.p2;
    }
    else {
      resolved.p2 = 0
    }

    if (msg.p3 !== undefined) {
      resolved.p3 = msg.p3;
    }
    else {
      resolved.p3 = 0
    }

    if (msg.nav_flag !== undefined) {
      resolved.nav_flag = msg.nav_flag;
    }
    else {
      resolved.nav_flag = 0
    }

    return resolved;
    }
};

module.exports = Waypoint;
