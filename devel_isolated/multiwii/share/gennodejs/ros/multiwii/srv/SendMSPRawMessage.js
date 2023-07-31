// Auto-generated. Do not edit!

// (in-package multiwii.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MSPRawMessage = require('../msg/MSPRawMessage.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SendMSPRawMessageRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.msg = null;
    }
    else {
      if (initObj.hasOwnProperty('msg')) {
        this.msg = initObj.msg
      }
      else {
        this.msg = new MSPRawMessage();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SendMSPRawMessageRequest
    // Serialize message field [msg]
    bufferOffset = MSPRawMessage.serialize(obj.msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SendMSPRawMessageRequest
    let len;
    let data = new SendMSPRawMessageRequest(null);
    // Deserialize message field [msg]
    data.msg = MSPRawMessage.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MSPRawMessage.getMessageSize(object.msg);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'multiwii/SendMSPRawMessageRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0e01cb4af5047b763cb98e1ac7628835';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    MSPRawMessage msg
    
    ================================================================================
    MSG: multiwii/MSPRawMessage
    uint8 id
    uint8[] data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SendMSPRawMessageRequest(null);
    if (msg.msg !== undefined) {
      resolved.msg = MSPRawMessage.Resolve(msg.msg)
    }
    else {
      resolved.msg = new MSPRawMessage()
    }

    return resolved;
    }
};

class SendMSPRawMessageResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SendMSPRawMessageResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SendMSPRawMessageResponse
    let len;
    let data = new SendMSPRawMessageResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'multiwii/SendMSPRawMessageResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SendMSPRawMessageResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SendMSPRawMessageRequest,
  Response: SendMSPRawMessageResponse,
  md5sum() { return '0e01cb4af5047b763cb98e1ac7628835'; },
  datatype() { return 'multiwii/SendMSPRawMessage'; }
};
