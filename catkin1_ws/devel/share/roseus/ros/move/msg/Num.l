;; Auto-generated. Do not edit!


(when (boundp 'move::Num)
  (if (not (find-package "MOVE"))
    (make-package "MOVE"))
  (shadow 'Num (find-package "MOVE")))
(unless (find-package "MOVE::NUM")
  (make-package "MOVE::NUM"))

(in-package "ROS")
;;//! \htmlinclude Num.msg.html


(defclass move::Num
  :super ros::object
  :slots (_num2 _num ))

(defmethod move::Num
  (:init
   (&key
    ((:num2 __num2) 0)
    ((:num __num) 0)
    )
   (send-super :init)
   (setq _num2 (round __num2))
   (setq _num (round __num))
   self)
  (:num2
   (&optional __num2)
   (if __num2 (setq _num2 __num2)) _num2)
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:serialization-length
   ()
   (+
    ;; int64 _num2
    8
    ;; int64 _num
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _num2
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _num2 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _num2) (= (length (_num2 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_num2 . bv) 0) 0) s)
              (write-long (ash (elt (_num2 . bv) 1) -1) s))
             ((and (class _num2) (= (length (_num2 . bv)) 1)) ;; big1
              (write-long (elt (_num2 . bv) 0) s)
              (write-long (if (>= _num2 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _num2 s)(write-long (if (>= _num2 0) 0 #xffffffff) s)))
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
   ;; int64 _num2
#+(or :alpha :irix6 :x86_64)
      (setf _num2 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _num2 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
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

(setf (get move::Num :md5sum-) "b6346e706caa49d5ab50c519a7d60cf0")
(setf (get move::Num :datatype-) "move/Num")
(setf (get move::Num :definition-)
      "int64 num2
int64 num

")



(provide :move/Num "b6346e706caa49d5ab50c519a7d60cf0")


