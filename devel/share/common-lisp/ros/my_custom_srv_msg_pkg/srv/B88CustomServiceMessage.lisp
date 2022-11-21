; Auto-generated. Do not edit!


(cl:in-package my_custom_srv_msg_pkg-srv)


;//! \htmlinclude B88CustomServiceMessage-request.msg.html

(cl:defclass <B88CustomServiceMessage-request> (roslisp-msg-protocol:ros-message)
  ((side
    :reader side
    :initarg :side
    :type cl:float
    :initform 0.0)
   (repetitions
    :reader repetitions
    :initarg :repetitions
    :type cl:integer
    :initform 0))
)

(cl:defclass B88CustomServiceMessage-request (<B88CustomServiceMessage-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <B88CustomServiceMessage-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'B88CustomServiceMessage-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_custom_srv_msg_pkg-srv:<B88CustomServiceMessage-request> is deprecated: use my_custom_srv_msg_pkg-srv:B88CustomServiceMessage-request instead.")))

(cl:ensure-generic-function 'side-val :lambda-list '(m))
(cl:defmethod side-val ((m <B88CustomServiceMessage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_custom_srv_msg_pkg-srv:side-val is deprecated.  Use my_custom_srv_msg_pkg-srv:side instead.")
  (side m))

(cl:ensure-generic-function 'repetitions-val :lambda-list '(m))
(cl:defmethod repetitions-val ((m <B88CustomServiceMessage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_custom_srv_msg_pkg-srv:repetitions-val is deprecated.  Use my_custom_srv_msg_pkg-srv:repetitions instead.")
  (repetitions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <B88CustomServiceMessage-request>) ostream)
  "Serializes a message object of type '<B88CustomServiceMessage-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'side))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'repetitions)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <B88CustomServiceMessage-request>) istream)
  "Deserializes a message object of type '<B88CustomServiceMessage-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'side) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'repetitions) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<B88CustomServiceMessage-request>)))
  "Returns string type for a service object of type '<B88CustomServiceMessage-request>"
  "my_custom_srv_msg_pkg/B88CustomServiceMessageRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'B88CustomServiceMessage-request)))
  "Returns string type for a service object of type 'B88CustomServiceMessage-request"
  "my_custom_srv_msg_pkg/B88CustomServiceMessageRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<B88CustomServiceMessage-request>)))
  "Returns md5sum for a message object of type '<B88CustomServiceMessage-request>"
  "b78c0d1a37ffcec6adef7714dda05daa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'B88CustomServiceMessage-request)))
  "Returns md5sum for a message object of type 'B88CustomServiceMessage-request"
  "b78c0d1a37ffcec6adef7714dda05daa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<B88CustomServiceMessage-request>)))
  "Returns full string definition for message of type '<B88CustomServiceMessage-request>"
  (cl:format cl:nil "float64 side         # The distance of each side of the square~%int32 repetitions    # The number of times BB-8 has to execute the square movement when the service is called~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'B88CustomServiceMessage-request)))
  "Returns full string definition for message of type 'B88CustomServiceMessage-request"
  (cl:format cl:nil "float64 side         # The distance of each side of the square~%int32 repetitions    # The number of times BB-8 has to execute the square movement when the service is called~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <B88CustomServiceMessage-request>))
  (cl:+ 0
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <B88CustomServiceMessage-request>))
  "Converts a ROS message object to a list"
  (cl:list 'B88CustomServiceMessage-request
    (cl:cons ':side (side msg))
    (cl:cons ':repetitions (repetitions msg))
))
;//! \htmlinclude B88CustomServiceMessage-response.msg.html

(cl:defclass <B88CustomServiceMessage-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass B88CustomServiceMessage-response (<B88CustomServiceMessage-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <B88CustomServiceMessage-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'B88CustomServiceMessage-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_custom_srv_msg_pkg-srv:<B88CustomServiceMessage-response> is deprecated: use my_custom_srv_msg_pkg-srv:B88CustomServiceMessage-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <B88CustomServiceMessage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_custom_srv_msg_pkg-srv:success-val is deprecated.  Use my_custom_srv_msg_pkg-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <B88CustomServiceMessage-response>) ostream)
  "Serializes a message object of type '<B88CustomServiceMessage-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <B88CustomServiceMessage-response>) istream)
  "Deserializes a message object of type '<B88CustomServiceMessage-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<B88CustomServiceMessage-response>)))
  "Returns string type for a service object of type '<B88CustomServiceMessage-response>"
  "my_custom_srv_msg_pkg/B88CustomServiceMessageResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'B88CustomServiceMessage-response)))
  "Returns string type for a service object of type 'B88CustomServiceMessage-response"
  "my_custom_srv_msg_pkg/B88CustomServiceMessageResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<B88CustomServiceMessage-response>)))
  "Returns md5sum for a message object of type '<B88CustomServiceMessage-response>"
  "b78c0d1a37ffcec6adef7714dda05daa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'B88CustomServiceMessage-response)))
  "Returns md5sum for a message object of type 'B88CustomServiceMessage-response"
  "b78c0d1a37ffcec6adef7714dda05daa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<B88CustomServiceMessage-response>)))
  "Returns full string definition for message of type '<B88CustomServiceMessage-response>"
  (cl:format cl:nil "bool success         # Did it achieve it?~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'B88CustomServiceMessage-response)))
  "Returns full string definition for message of type 'B88CustomServiceMessage-response"
  (cl:format cl:nil "bool success         # Did it achieve it?~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <B88CustomServiceMessage-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <B88CustomServiceMessage-response>))
  "Converts a ROS message object to a list"
  (cl:list 'B88CustomServiceMessage-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'B88CustomServiceMessage)))
  'B88CustomServiceMessage-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'B88CustomServiceMessage)))
  'B88CustomServiceMessage-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'B88CustomServiceMessage)))
  "Returns string type for a service object of type '<B88CustomServiceMessage>"
  "my_custom_srv_msg_pkg/B88CustomServiceMessage")