; Auto-generated. Do not edit!


(cl:in-package srvclint-srv)


;//! \htmlinclude prime-request.msg.html

(cl:defclass <prime-request> (roslisp-msg-protocol:ros-message)
  ((num2
    :reader num2
    :initarg :num2
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass prime-request (<prime-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <prime-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'prime-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srvclint-srv:<prime-request> is deprecated: use srvclint-srv:prime-request instead.")))

(cl:ensure-generic-function 'num2-val :lambda-list '(m))
(cl:defmethod num2-val ((m <prime-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srvclint-srv:num2-val is deprecated.  Use srvclint-srv:num2 instead.")
  (num2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <prime-request>) ostream)
  "Serializes a message object of type '<prime-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'num2))))
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
   (cl:slot-value msg 'num2))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <prime-request>) istream)
  "Deserializes a message object of type '<prime-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'num2) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'num2)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<prime-request>)))
  "Returns string type for a service object of type '<prime-request>"
  "srvclint/primeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'prime-request)))
  "Returns string type for a service object of type 'prime-request"
  "srvclint/primeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<prime-request>)))
  "Returns md5sum for a message object of type '<prime-request>"
  "2f44a4f612e30235b2307bc2c0cc629b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'prime-request)))
  "Returns md5sum for a message object of type 'prime-request"
  "2f44a4f612e30235b2307bc2c0cc629b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<prime-request>)))
  "Returns full string definition for message of type '<prime-request>"
  (cl:format cl:nil "int64[] num2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'prime-request)))
  "Returns full string definition for message of type 'prime-request"
  (cl:format cl:nil "int64[] num2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <prime-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'num2) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <prime-request>))
  "Converts a ROS message object to a list"
  (cl:list 'prime-request
    (cl:cons ':num2 (num2 msg))
))
;//! \htmlinclude prime-response.msg.html

(cl:defclass <prime-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass prime-response (<prime-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <prime-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'prime-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srvclint-srv:<prime-response> is deprecated: use srvclint-srv:prime-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <prime-response>) ostream)
  "Serializes a message object of type '<prime-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <prime-response>) istream)
  "Deserializes a message object of type '<prime-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<prime-response>)))
  "Returns string type for a service object of type '<prime-response>"
  "srvclint/primeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'prime-response)))
  "Returns string type for a service object of type 'prime-response"
  "srvclint/primeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<prime-response>)))
  "Returns md5sum for a message object of type '<prime-response>"
  "2f44a4f612e30235b2307bc2c0cc629b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'prime-response)))
  "Returns md5sum for a message object of type 'prime-response"
  "2f44a4f612e30235b2307bc2c0cc629b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<prime-response>)))
  "Returns full string definition for message of type '<prime-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'prime-response)))
  "Returns full string definition for message of type 'prime-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <prime-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <prime-response>))
  "Converts a ROS message object to a list"
  (cl:list 'prime-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'prime)))
  'prime-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'prime)))
  'prime-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'prime)))
  "Returns string type for a service object of type '<prime>"
  "srvclint/prime")