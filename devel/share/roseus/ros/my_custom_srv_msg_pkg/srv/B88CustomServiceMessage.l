;; Auto-generated. Do not edit!


(when (boundp 'my_custom_srv_msg_pkg::B88CustomServiceMessage)
  (if (not (find-package "MY_CUSTOM_SRV_MSG_PKG"))
    (make-package "MY_CUSTOM_SRV_MSG_PKG"))
  (shadow 'B88CustomServiceMessage (find-package "MY_CUSTOM_SRV_MSG_PKG")))
(unless (find-package "MY_CUSTOM_SRV_MSG_PKG::B88CUSTOMSERVICEMESSAGE")
  (make-package "MY_CUSTOM_SRV_MSG_PKG::B88CUSTOMSERVICEMESSAGE"))
(unless (find-package "MY_CUSTOM_SRV_MSG_PKG::B88CUSTOMSERVICEMESSAGEREQUEST")
  (make-package "MY_CUSTOM_SRV_MSG_PKG::B88CUSTOMSERVICEMESSAGEREQUEST"))
(unless (find-package "MY_CUSTOM_SRV_MSG_PKG::B88CUSTOMSERVICEMESSAGERESPONSE")
  (make-package "MY_CUSTOM_SRV_MSG_PKG::B88CUSTOMSERVICEMESSAGERESPONSE"))

(in-package "ROS")





(defclass my_custom_srv_msg_pkg::B88CustomServiceMessageRequest
  :super ros::object
  :slots (_side _repetitions ))

(defmethod my_custom_srv_msg_pkg::B88CustomServiceMessageRequest
  (:init
   (&key
    ((:side __side) 0.0)
    ((:repetitions __repetitions) 0)
    )
   (send-super :init)
   (setq _side (float __side))
   (setq _repetitions (round __repetitions))
   self)
  (:side
   (&optional __side)
   (if __side (setq _side __side)) _side)
  (:repetitions
   (&optional __repetitions)
   (if __repetitions (setq _repetitions __repetitions)) _repetitions)
  (:serialization-length
   ()
   (+
    ;; float64 _side
    8
    ;; int32 _repetitions
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _side
       (sys::poke _side (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _repetitions
       (write-long _repetitions s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _side
     (setq _side (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _repetitions
     (setq _repetitions (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass my_custom_srv_msg_pkg::B88CustomServiceMessageResponse
  :super ros::object
  :slots (_success ))

(defmethod my_custom_srv_msg_pkg::B88CustomServiceMessageResponse
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

(defclass my_custom_srv_msg_pkg::B88CustomServiceMessage
  :super ros::object
  :slots ())

(setf (get my_custom_srv_msg_pkg::B88CustomServiceMessage :md5sum-) "b78c0d1a37ffcec6adef7714dda05daa")
(setf (get my_custom_srv_msg_pkg::B88CustomServiceMessage :datatype-) "my_custom_srv_msg_pkg/B88CustomServiceMessage")
(setf (get my_custom_srv_msg_pkg::B88CustomServiceMessage :request) my_custom_srv_msg_pkg::B88CustomServiceMessageRequest)
(setf (get my_custom_srv_msg_pkg::B88CustomServiceMessage :response) my_custom_srv_msg_pkg::B88CustomServiceMessageResponse)

(defmethod my_custom_srv_msg_pkg::B88CustomServiceMessageRequest
  (:response () (instance my_custom_srv_msg_pkg::B88CustomServiceMessageResponse :init)))

(setf (get my_custom_srv_msg_pkg::B88CustomServiceMessageRequest :md5sum-) "b78c0d1a37ffcec6adef7714dda05daa")
(setf (get my_custom_srv_msg_pkg::B88CustomServiceMessageRequest :datatype-) "my_custom_srv_msg_pkg/B88CustomServiceMessageRequest")
(setf (get my_custom_srv_msg_pkg::B88CustomServiceMessageRequest :definition-)
      "float64 side         # The distance of each side of the square
int32 repetitions    # The number of times BB-8 has to execute the square movement when the service is called
---
bool success         # Did it achieve it?
")

(setf (get my_custom_srv_msg_pkg::B88CustomServiceMessageResponse :md5sum-) "b78c0d1a37ffcec6adef7714dda05daa")
(setf (get my_custom_srv_msg_pkg::B88CustomServiceMessageResponse :datatype-) "my_custom_srv_msg_pkg/B88CustomServiceMessageResponse")
(setf (get my_custom_srv_msg_pkg::B88CustomServiceMessageResponse :definition-)
      "float64 side         # The distance of each side of the square
int32 repetitions    # The number of times BB-8 has to execute the square movement when the service is called
---
bool success         # Did it achieve it?
")



(provide :my_custom_srv_msg_pkg/B88CustomServiceMessage "b78c0d1a37ffcec6adef7714dda05daa")


