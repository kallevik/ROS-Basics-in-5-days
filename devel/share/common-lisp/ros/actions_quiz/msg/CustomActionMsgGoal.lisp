; Auto-generated. Do not edit!


(cl:in-package actions_quiz-msg)


;//! \htmlinclude CustomActionMsgGoal.msg.html

(cl:defclass <CustomActionMsgGoal> (roslisp-msg-protocol:ros-message)
  ((goal
    :reader goal
    :initarg :goal
    :type cl:string
    :initform ""))
)

(cl:defclass CustomActionMsgGoal (<CustomActionMsgGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CustomActionMsgGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CustomActionMsgGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name actions_quiz-msg:<CustomActionMsgGoal> is deprecated: use actions_quiz-msg:CustomActionMsgGoal instead.")))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <CustomActionMsgGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actions_quiz-msg:goal-val is deprecated.  Use actions_quiz-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CustomActionMsgGoal>) ostream)
  "Serializes a message object of type '<CustomActionMsgGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'goal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'goal))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CustomActionMsgGoal>) istream)
  "Deserializes a message object of type '<CustomActionMsgGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'goal) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CustomActionMsgGoal>)))
  "Returns string type for a message object of type '<CustomActionMsgGoal>"
  "actions_quiz/CustomActionMsgGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomActionMsgGoal)))
  "Returns string type for a message object of type 'CustomActionMsgGoal"
  "actions_quiz/CustomActionMsgGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CustomActionMsgGoal>)))
  "Returns md5sum for a message object of type '<CustomActionMsgGoal>"
  "6e8c62b390dd09eb60220ad7325cbdf7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CustomActionMsgGoal)))
  "Returns md5sum for a message object of type 'CustomActionMsgGoal"
  "6e8c62b390dd09eb60220ad7325cbdf7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CustomActionMsgGoal>)))
  "Returns full string definition for message of type '<CustomActionMsgGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal~%string goal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CustomActionMsgGoal)))
  "Returns full string definition for message of type 'CustomActionMsgGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal~%string goal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CustomActionMsgGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CustomActionMsgGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'CustomActionMsgGoal
    (cl:cons ':goal (goal msg))
))
