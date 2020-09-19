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

class primeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.num2 = null;
    }
    else {
      if (initObj.hasOwnProperty('num2')) {
        this.num2 = initObj.num2
      }
      else {
        this.num2 = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type primeRequest
    // Serialize message field [num2]
    bufferOffset = _arraySerializer.int64(obj.num2, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type primeRequest
    let len;
    let data = new primeRequest(null);
    // Deserialize message field [num2]
    data.num2 = _arrayDeserializer.int64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.num2.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'srvclint/primeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2f44a4f612e30235b2307bc2c0cc629b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64[] num2
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new primeRequest(null);
    if (msg.num2 !== undefined) {
      resolved.num2 = msg.num2;
    }
    else {
      resolved.num2 = []
    }

    return resolved;
    }
};

class primeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type primeResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type primeResponse
    let len;
    let data = new primeResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'srvclint/primeResponse';
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
    const resolved = new primeResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: primeRequest,
  Response: primeResponse,
  md5sum() { return '2f44a4f612e30235b2307bc2c0cc629b'; },
  datatype() { return 'srvclint/prime'; }
};
