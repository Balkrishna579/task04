;; Auto-generated. Do not edit!


(when (boundp 'CombinedInfo::Info)
  (if (not (find-package "COMBINEDINFO"))
    (make-package "COMBINEDINFO"))
  (shadow 'Info (find-package "COMBINEDINFO")))
(unless (find-package "COMBINEDINFO::INFO")
  (make-package "COMBINEDINFO::INFO"))

(in-package "ROS")
;;//! \htmlinclude Info.msg.html


(defclass CombinedInfo::Info
  :super ros::object
  :slots (_linear _angular _rota ))

(defmethod CombinedInfo::Info
  (:init
   (&key
    ((:linear __linear) (instance CombinedInfo::Vector3 :init))
    ((:angular __angular) (instance CombinedInfo::Vector3 :init))
    ((:rota __rota) (instance CombinedInfo::Vector3 :init))
    )
   (send-super :init)
   (setq _linear __linear)
   (setq _angular __angular)
   (setq _rota __rota)
   self)
  (:linear
   (&rest __linear)
   (if (keywordp (car __linear))
       (send* _linear __linear)
     (progn
       (if __linear (setq _linear (car __linear)))
       _linear)))
  (:angular
   (&rest __angular)
   (if (keywordp (car __angular))
       (send* _angular __angular)
     (progn
       (if __angular (setq _angular (car __angular)))
       _angular)))
  (:rota
   (&rest __rota)
   (if (keywordp (car __rota))
       (send* _rota __rota)
     (progn
       (if __rota (setq _rota (car __rota)))
       _rota)))
  (:serialization-length
   ()
   (+
    ;; CombinedInfo/Vector3 _linear
    (send _linear :serialization-length)
    ;; CombinedInfo/Vector3 _angular
    (send _angular :serialization-length)
    ;; CombinedInfo/Vector3 _rota
    (send _rota :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; CombinedInfo/Vector3 _linear
       (send _linear :serialize s)
     ;; CombinedInfo/Vector3 _angular
       (send _angular :serialize s)
     ;; CombinedInfo/Vector3 _rota
       (send _rota :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; CombinedInfo/Vector3 _linear
     (send _linear :deserialize buf ptr-) (incf ptr- (send _linear :serialization-length))
   ;; CombinedInfo/Vector3 _angular
     (send _angular :deserialize buf ptr-) (incf ptr- (send _angular :serialization-length))
   ;; CombinedInfo/Vector3 _rota
     (send _rota :deserialize buf ptr-) (incf ptr- (send _rota :serialization-length))
   ;;
   self)
  )

(setf (get CombinedInfo::Info :md5sum-) "9424e4f2ea440d61cdcc97ed9f70470f")
(setf (get CombinedInfo::Info :datatype-) "CombinedInfo/Info")
(setf (get CombinedInfo::Info :definition-)
      "Vector3  linear
Vector3  angular
Vector3  rota

================================================================================
MSG: CombinedInfo/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :CombinedInfo/Info "9424e4f2ea440d61cdcc97ed9f70470f")


