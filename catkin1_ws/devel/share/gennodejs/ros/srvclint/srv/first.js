// Auto-generated. Do not edit!

// (in-package srvclint.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class firstRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.num = null;
    }
    else {
      if (initObj.hasOwnProperty('num')) {
        this.num = initObj.num
      }
      else {
        this.num = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type firstRequest
    // Serialize message field [num]
    bufferOffset = _serializer.int64(obj.num, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type firstRequest
    let len;
    let data = new firstRequest(null);
    // Deserialize message field [num]
    data.num = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'srvclint/firstRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '57d3c40ec3ac3754af76a83e6e73127a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 num
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new firstRequest(null);
    if (msg.num !== undefined) {
      resolved.num = msg.num;
    }
    else {
      resolved.num = 0
    }

    return resolved;
    }
};

class firstResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.num1 = null;
    }
    else {
      if (initObj.hasOwnProperty('num1')) {
        this.num1 = initObj.num1
      }
      else {
        this.num1 = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type firstResponse
    // Serialize message field [num1]
    bufferOffset = _arraySerializer.int64(obj.num1, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type firstResponse
    let len;
    let data = new firstResponse(null);
    // Deserialize message field [num1]
    data.num1 = _arrayDeserializer.int64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.num1.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'srvclint/firstResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9073d392ac229b641b8de1695bb6f85d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64[] num1
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new firstResponse(null);
    if (msg.num1 !== undefined) {
      resolved.num1 = msg.num1;
    }
    else {
      resolved.num1 = []
    }

    return resolved;
    }
};

module.exports = {
  Request: firstRequest,
  Response: firstResponse,
  md5sum() { return 'e208a1c5d9d170c032febd9b600898e8'; },
  datatype() { return 'srvclint/first'; }
};
