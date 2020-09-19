;; Auto-generated. Do not edit!


(when (boundp 'srvclint::first)
  (if (not (find-package "SRVCLINT"))
    (make-package "SRVCLINT"))
  (shadow 'first (find-package "SRVCLINT")))
(unless (find-package "SRVCLINT::FIRST")
  (make-package "SRVCLINT::FIRST"))
(unless (find-package "SRVCLINT::FIRSTREQUEST")
  (make-package "SRVCLINT::FIRSTREQUEST"))
(unless (find-package "SRVCLINT::FIRSTRESPONSE")
  (make-package "SRVCLINT::FIRSTRESPONSE"))

(in-package "ROS")





(defclass srvclint::firstRequest
  :super ros::object
  :slots (_num ))

(defmethod srvclint::firstRequest
  (:init
   (&key
    ((:num __num) 0)
    )
   (send-super :init)
   (setq _num (round __num))
   self)
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:serialization-length
   ()
   (+
    ;; int64 _num
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _num
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _num (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _num) (= (length (_num . bv)) 2)) ;; bignum
              (write-long (ash (elt (_num . bv) 0) 0) s)
              (write-long (ash (elt (_num . bv) 1) -1) s))
             ((and (class _num) (= (length (_num . bv)) 1)) ;; big1
              (write-long (elt (_num . bv) 0) s)
              (write-long (if (>= _num 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _num s)(write-long (if (>= _num 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _num
#+(or :alpha :irix6 :x86_64)
      (setf _num (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _num (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass srvclint::firstResponse
  :super ros::object
  :slots (_num1 ))

(defmethod srvclint::firstResponse
  (:init
   (&key
    ((:num1 __num1) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _num1 __num1)
   self)
  (:num1
   (&optional __num1)
   (if __num1 (setq _num1 __num1)) _num1)
  (:serialization-length
   ()
   (+
    ;; int64[] _num1
    (* 8    (length _num1)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64[] _num1
     (write-long (length _num1) s)
     (dotimes (i (length _num1))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _num1 i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _num1 i)) (= (length ((elt _num1 i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _num1 i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _num1 i) . bv) 1) -1) s))
             ((and (class (elt _num1 i)) (= (length ((elt _num1 i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _num1 i) . bv) 0) s)
              (write-long (if (>= (elt _num1 i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _num1 i) s)(write-long (if (>= (elt _num1 i) 0) 0 #xffffffff) s)))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64[] _num1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _num1 (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _num1 i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _num1 i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass srvclint::first
  :super ros::object
  :slots ())

(setf (get srvclint::first :md5sum-) "e208a1c5d9d170c032febd9b600898e8")
(setf (get srvclint::first :datatype-) "srvclint/first")
(setf (get srvclint::first :request) srvclint::firstRequest)
(setf (get srvclint::first :response) srvclint::firstResponse)

(defmethod srvclint::firstRequest
  (:response () (instance srvclint::firstResponse :init)))

(setf (get srvclint::firstRequest :md5sum-) "e208a1c5d9d170c032febd9b600898e8")
(setf (get srvclint::firstRequest :datatype-) "srvclint/firstRequest")
(setf (get srvclint::firstRequest :definition-)
      "int64 num
---
int64[] num1

")

(setf (get srvclint::firstResponse :md5sum-) "e208a1c5d9d170c032febd9b600898e8")
(setf (get srvclint::firstResponse :datatype-) "srvclint/firstResponse")
(setf (get srvclint::firstResponse :definition-)
      "int64 num
---
int64[] num1

")



(provide :srvclint/first "e208a1c5d9d170c032febd9b600898e8")


