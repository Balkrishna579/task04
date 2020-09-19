; Auto-generated. Do not edit!


(cl:in-package CombinedInfo-msg)


;//! \htmlinclude Info.msg.html

(cl:defclass <Info> (roslisp-msg-protocol:ros-message)
  ((linear
    :reader linear
    :initarg :linear
    :type CombinedInfo-msg:Vector3
    :initform (cl:make-instance 'CombinedInfo-msg:Vector3))
   (angular
    :reader angular
    :initarg :angular
    :type CombinedInfo-msg:Vector3
    :initform (cl:make-instance 'CombinedInfo-msg:Vector3))
   (rota
    :reader rota
    :initarg :rota
    :type CombinedInfo-msg:Vector3
    :initform (cl:make-instance 'CombinedInfo-msg:Vector3)))
)

(cl:defclass Info (<Info>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Info>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Info)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name CombinedInfo-msg:<Info> is deprecated: use CombinedInfo-msg:Info instead.")))

(cl:ensure-generic-function 'linear-val :lambda-list '(m))
(cl:defmethod linear-val ((m <Info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader CombinedInfo-msg:linear-val is deprecated.  Use CombinedInfo-msg:linear instead.")
  (linear m))

(cl:ensure-generic-function 'angular-val :lambda-list '(m))
(cl:defmethod angular-val ((m <Info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader CombinedInfo-msg:angular-val is deprecated.  Use CombinedInfo-msg:angular instead.")
  (angular m))

(cl:ensure-generic-function 'rota-val :lambda-list '(m))
(cl:defmethod rota-val ((m <Info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader CombinedInfo-msg:rota-val is deprecated.  Use CombinedInfo-msg:rota instead.")
  (rota m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Info>) ostream)
  "Serializes a message object of type '<Info>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rota) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Info>) istream)
  "Deserializes a message object of type '<Info>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rota) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Info>)))
  "Returns string type for a message object of type '<Info>"
  "CombinedInfo/Info")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Info)))
  "Returns string type for a message object of type 'Info"
  "CombinedInfo/Info")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Info>)))
  "Returns md5sum for a message object of type '<Info>"
  "9424e4f2ea440d61cdcc97ed9f70470f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Info)))
  "Returns md5sum for a message object of type 'Info"
  "9424e4f2ea440d61cdcc97ed9f70470f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Info>)))
  "Returns full string definition for message of type '<Info>"
  (cl:format cl:nil "Vector3  linear~%Vector3  angular~%Vector3  rota~%~%================================================================================~%MSG: CombinedInfo/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Info)))
  "Returns full string definition for message of type 'Info"
  (cl:format cl:nil "Vector3  linear~%Vector3  angular~%Vector3  rota~%~%================================================================================~%MSG: CombinedInfo/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Info>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rota))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Info>))
  "Converts a ROS message object to a list"
  (cl:list 'Info
    (cl:cons ':linear (linear msg))
    (cl:cons ':angular (angular msg))
    (cl:cons ':rota (rota msg))
))
