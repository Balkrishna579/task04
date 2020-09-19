;; Auto-generated. Do not edit!


(when (boundp 'srvclint::prime)
  (if (not (find-package "SRVCLINT"))
    (make-package "SRVCLINT"))
  (shadow 'prime (find-package "SRVCLINT")))
(unless (find-package "SRVCLINT::PRIME")
  (make-package "SRVCLINT::PRIME"))
(unless (find-package "SRVCLINT::PRIMEREQUEST")
  (make-package "SRVCLINT::PRIMEREQUEST"))
(unless (find-package "SRVCLINT::PRIMERESPONSE")
  (make-package "SRVCLINT::PRIMERESPONSE"))

(in-package "ROS")





(defclass srvclint::primeRequest
  :super ros::object
  :slots (_num2 ))

(defmethod srvclint::primeRequest
  (:init
   (&key
    ((:num2 __num2) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _num2 __num2)
   self)
  (:num2
   (&optional __num2)
   (if __num2 (setq _num2 __num2)) _num2)
  (:serialization-length
   ()
   (+
    ;; int64[] _num2
    (* 8    (length _num2)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64[] _num2
     (write-long (length _num2) s)
     (dotimes (i (length _num2))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _num2 i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _num2 i)) (= (length ((elt _num2 i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _num2 i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _num2 i) . bv) 1) -1) s))
             ((and (class (elt _num2 i)) (= (length ((elt _num2 i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _num2 i) . bv) 0) s)
              (write-long (if (>= (elt _num2 i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _num2 i) s)(write-long (if (>= (elt _num2 i) 0) 0 #xffffffff) s)))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64[] _num2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _num2 (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _num2 i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _num2 i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;;
   self)
  )

(defclass srvclint::primeResponse
  :super ros::object
  :slots ())

(defmethod srvclint::primeResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass srvclint::prime
  :super ros::object
  :slots ())

(setf (get srvclint::prime :md5sum-) "2f44a4f612e30235b2307bc2c0cc629b")
(setf (get srvclint::prime :datatype-) "srvclint/prime")
(setf (get srvclint::prime :request) srvclint::primeRequest)
(setf (get srvclint::prime :response) srvclint::primeResponse)

(defmethod srvclint::primeRequest
  (:response () (instance srvclint::primeResponse :init)))

(setf (get srvclint::primeRequest :md5sum-) "2f44a4f612e30235b2307bc2c0cc629b")
(setf (get srvclint::primeRequest :datatype-) "srvclint/primeRequest")
(setf (get srvclint::primeRequest :definition-)
      "int64[] num2

---
")

(setf (get srvclint::primeResponse :md5sum-) "2f44a4f612e30235b2307bc2c0cc629b")
(setf (get srvclint::primeResponse :datatype-) "srvclint/primeResponse")
(setf (get srvclint::primeResponse :definition-)
      "int64[] num2

---
")



(provide :srvclint/prime "2f44a4f612e30235b2307bc2c0cc629b")


