; Auto-generated. Do not edit!


(cl:in-package srvclint-srv)


;//! \htmlinclude first-request.msg.html

(cl:defclass <first-request> (roslisp-msg-protocol:ros-message)
  ((num
    :reader num
    :initarg :num
    :type cl:integer
    :initform 0))
)

(cl:defclass first-request (<first-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <first-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'first-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srvclint-srv:<first-request> is deprecated: use srvclint-srv:first-request instead.")))

(cl:ensure-generic-function 'num-val :lambda-list '(m))
(cl:defmethod num-val ((m <first-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srvclint-srv:num-val is deprecated.  Use srvclint-srv:num instead.")
  (num m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <first-request>) ostream)
  "Serializes a message object of type '<first-request>"
  (cl:let* ((signed (cl:slot-value msg 'num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <first-request>) istream)
  "Deserializes a message object of type '<first-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<first-request>)))
  "Returns string type for a service object of type '<first-request>"
  "srvclint/firstRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'first-request)))
  "Returns string type for a service object of type 'first-request"
  "srvclint/firstRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<first-request>)))
  "Returns md5sum for a message object of type '<first-request>"
  "e208a1c5d9d170c032febd9b600898e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'first-request)))
  "Returns md5sum for a message object of type 'first-request"
  "e208a1c5d9d170c032febd9b600898e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<first-request>)))
  "Returns full string definition for message of type '<first-request>"
  (cl:format cl:nil "int64 num~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'first-request)))
  "Returns full string definition for message of type 'first-request"
  (cl:format cl:nil "int64 num~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <first-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <first-request>))
  "Converts a ROS message object to a list"
  (cl:list 'first-request
    (cl:cons ':num (num msg))
))
;//! \htmlinclude first-response.msg.html

(cl:defclass <first-response> (roslisp-msg-protocol:ros-message)
  ((num1
    :reader num1
    :initarg :num1
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass first-response (<first-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <first-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'first-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srvclint-srv:<first-response> is deprecated: use srvclint-srv:first-response instead.")))

(cl:ensure-generic-function 'num1-val :lambda-list '(m))
(cl:defmethod num1-val ((m <first-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srvclint-srv:num1-val is deprecated.  Use srvclint-srv:num1 instead.")
  (num1 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <first-response>) ostream)
  "Serializes a message object of type '<first-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'num1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    ))
   (cl:slot-value msg 'num1))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <first-response>) istream)
  "Deserializes a message object of type '<first-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'num1) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'num1)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<first-response>)))
  "Returns string type for a service object of type '<first-response>"
  "srvclint/firstResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'first-response)))
  "Returns string type for a service object of type 'first-response"
  "srvclint/firstResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<first-response>)))
  "Returns md5sum for a message object of type '<first-response>"
  "e208a1c5d9d170c032febd9b600898e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'first-response)))
  "Returns md5sum for a message object of type 'first-response"
  "e208a1c5d9d170c032febd9b600898e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<first-response>)))
  "Returns full string definition for message of type '<first-response>"
  (cl:format cl:nil "int64[] num1~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'first-response)))
  "Returns full string definition for message of type 'first-response"
  (cl:format cl:nil "int64[] num1~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <first-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'num1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <first-response>))
  "Converts a ROS message object to a list"
  (cl:list 'first-response
    (cl:cons ':num1 (num1 msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'first)))
  'first-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'first)))
  'first-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'first)))
  "Returns string type for a service object of type '<first>"
  "srvclint/first")