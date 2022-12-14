;; Auto-generated. Do not edit!


(when (boundp 'my_python_class::MyCustomServiceMessage)
  (if (not (find-package "MY_PYTHON_CLASS"))
    (make-package "MY_PYTHON_CLASS"))
  (shadow 'MyCustomServiceMessage (find-package "MY_PYTHON_CLASS")))
(unless (find-package "MY_PYTHON_CLASS::MYCUSTOMSERVICEMESSAGE")
  (make-package "MY_PYTHON_CLASS::MYCUSTOMSERVICEMESSAGE"))
(unless (find-package "MY_PYTHON_CLASS::MYCUSTOMSERVICEMESSAGEREQUEST")
  (make-package "MY_PYTHON_CLASS::MYCUSTOMSERVICEMESSAGEREQUEST"))
(unless (find-package "MY_PYTHON_CLASS::MYCUSTOMSERVICEMESSAGERESPONSE")
  (make-package "MY_PYTHON_CLASS::MYCUSTOMSERVICEMESSAGERESPONSE"))

(in-package "ROS")





(defclass my_python_class::MyCustomServiceMessageRequest
  :super ros::object
  :slots (_duration ))

(defmethod my_python_class::MyCustomServiceMessageRequest
  (:init
   (&key
    ((:duration __duration) 0)
    )
   (send-super :init)
   (setq _duration (round __duration))
   self)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; int32 _duration
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _duration
       (write-long _duration s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _duration
     (setq _duration (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass my_python_class::MyCustomServiceMessageResponse
  :super ros::object
  :slots (_success ))

(defmethod my_python_class::MyCustomServiceMessageResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass my_python_class::MyCustomServiceMessage
  :super ros::object
  :slots ())

(setf (get my_python_class::MyCustomServiceMessage :md5sum-) "b92c952a9248b3029cefe45f52f6ffde")
(setf (get my_python_class::MyCustomServiceMessage :datatype-) "my_python_class/MyCustomServiceMessage")
(setf (get my_python_class::MyCustomServiceMessage :request) my_python_class::MyCustomServiceMessageRequest)
(setf (get my_python_class::MyCustomServiceMessage :response) my_python_class::MyCustomServiceMessageResponse)

(defmethod my_python_class::MyCustomServiceMessageRequest
  (:response () (instance my_python_class::MyCustomServiceMessageResponse :init)))

(setf (get my_python_class::MyCustomServiceMessageRequest :md5sum-) "b92c952a9248b3029cefe45f52f6ffde")
(setf (get my_python_class::MyCustomServiceMessageRequest :datatype-) "my_python_class/MyCustomServiceMessageRequest")
(setf (get my_python_class::MyCustomServiceMessageRequest :definition-)
      "int32 duration    # The time (in seconds) during which BB-8 will keep moving in circles
---
bool success      # Did it achieve it?

")

(setf (get my_python_class::MyCustomServiceMessageResponse :md5sum-) "b92c952a9248b3029cefe45f52f6ffde")
(setf (get my_python_class::MyCustomServiceMessageResponse :datatype-) "my_python_class/MyCustomServiceMessageResponse")
(setf (get my_python_class::MyCustomServiceMessageResponse :definition-)
      "int32 duration    # The time (in seconds) during which BB-8 will keep moving in circles
---
bool success      # Did it achieve it?

")



(provide :my_python_class/MyCustomServiceMessage "b92c952a9248b3029cefe45f52f6ffde")


