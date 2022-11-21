;; Auto-generated. Do not edit!


(when (boundp 'unit_5_services::BB8CustomServiceMessage)
  (if (not (find-package "UNIT_5_SERVICES"))
    (make-package "UNIT_5_SERVICES"))
  (shadow 'BB8CustomServiceMessage (find-package "UNIT_5_SERVICES")))
(unless (find-package "UNIT_5_SERVICES::BB8CUSTOMSERVICEMESSAGE")
  (make-package "UNIT_5_SERVICES::BB8CUSTOMSERVICEMESSAGE"))
(unless (find-package "UNIT_5_SERVICES::BB8CUSTOMSERVICEMESSAGEREQUEST")
  (make-package "UNIT_5_SERVICES::BB8CUSTOMSERVICEMESSAGEREQUEST"))
(unless (find-package "UNIT_5_SERVICES::BB8CUSTOMSERVICEMESSAGERESPONSE")
  (make-package "UNIT_5_SERVICES::BB8CUSTOMSERVICEMESSAGERESPONSE"))

(in-package "ROS")





(defclass unit_5_services::BB8CustomServiceMessageRequest
  :super ros::object
  :slots (_side _repetitions ))

(defmethod unit_5_services::BB8CustomServiceMessageRequest
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

(defclass unit_5_services::BB8CustomServiceMessageResponse
  :super ros::object
  :slots (_success ))

(defmethod unit_5_services::BB8CustomServiceMessageResponse
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

(defclass unit_5_services::BB8CustomServiceMessage
  :super ros::object
  :slots ())

(setf (get unit_5_services::BB8CustomServiceMessage :md5sum-) "b78c0d1a37ffcec6adef7714dda05daa")
(setf (get unit_5_services::BB8CustomServiceMessage :datatype-) "unit_5_services/BB8CustomServiceMessage")
(setf (get unit_5_services::BB8CustomServiceMessage :request) unit_5_services::BB8CustomServiceMessageRequest)
(setf (get unit_5_services::BB8CustomServiceMessage :response) unit_5_services::BB8CustomServiceMessageResponse)

(defmethod unit_5_services::BB8CustomServiceMessageRequest
  (:response () (instance unit_5_services::BB8CustomServiceMessageResponse :init)))

(setf (get unit_5_services::BB8CustomServiceMessageRequest :md5sum-) "b78c0d1a37ffcec6adef7714dda05daa")
(setf (get unit_5_services::BB8CustomServiceMessageRequest :datatype-) "unit_5_services/BB8CustomServiceMessageRequest")
(setf (get unit_5_services::BB8CustomServiceMessageRequest :definition-)
      "float64 side         # The distance of each side of the square
int32 repetitions    # The number of times BB-8 has to execute the square movement when the service is called
---
bool success         # Did it achieve it?
")

(setf (get unit_5_services::BB8CustomServiceMessageResponse :md5sum-) "b78c0d1a37ffcec6adef7714dda05daa")
(setf (get unit_5_services::BB8CustomServiceMessageResponse :datatype-) "unit_5_services/BB8CustomServiceMessageResponse")
(setf (get unit_5_services::BB8CustomServiceMessageResponse :definition-)
      "float64 side         # The distance of each side of the square
int32 repetitions    # The number of times BB-8 has to execute the square movement when the service is called
---
bool success         # Did it achieve it?
")



(provide :unit_5_services/BB8CustomServiceMessage "b78c0d1a37ffcec6adef7714dda05daa")


