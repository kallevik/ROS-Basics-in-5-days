;; Auto-generated. Do not edit!


(when (boundp 'actions_quiz::CustomActionMsgResult)
  (if (not (find-package "ACTIONS_QUIZ"))
    (make-package "ACTIONS_QUIZ"))
  (shadow 'CustomActionMsgResult (find-package "ACTIONS_QUIZ")))
(unless (find-package "ACTIONS_QUIZ::CUSTOMACTIONMSGRESULT")
  (make-package "ACTIONS_QUIZ::CUSTOMACTIONMSGRESULT"))

(in-package "ROS")
;;//! \htmlinclude CustomActionMsgResult.msg.html


(defclass actions_quiz::CustomActionMsgResult
  :super ros::object
  :slots ())

(defmethod actions_quiz::CustomActionMsgResult
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

(setf (get actions_quiz::CustomActionMsgResult :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get actions_quiz::CustomActionMsgResult :datatype-) "actions_quiz/CustomActionMsgResult")
(setf (get actions_quiz::CustomActionMsgResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#result


")



(provide :actions_quiz/CustomActionMsgResult "d41d8cd98f00b204e9800998ecf8427e")

