; Auto-generated. Do not edit!


(cl:in-package multiwii-srv)


;//! \htmlinclude ReceiveMSPRawMessage-request.msg.html

(cl:defclass <ReceiveMSPRawMessage-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ReceiveMSPRawMessage-request (<ReceiveMSPRawMessage-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReceiveMSPRawMessage-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReceiveMSPRawMessage-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multiwii-srv:<ReceiveMSPRawMessage-request> is deprecated: use multiwii-srv:ReceiveMSPRawMessage-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <ReceiveMSPRawMessage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multiwii-srv:id-val is deprecated.  Use multiwii-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReceiveMSPRawMessage-request>) ostream)
  "Serializes a message object of type '<ReceiveMSPRawMessage-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReceiveMSPRawMessage-request>) istream)
  "Deserializes a message object of type '<ReceiveMSPRawMessage-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReceiveMSPRawMessage-request>)))
  "Returns string type for a service object of type '<ReceiveMSPRawMessage-request>"
  "multiwii/ReceiveMSPRawMessageRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReceiveMSPRawMessage-request)))
  "Returns string type for a service object of type 'ReceiveMSPRawMessage-request"
  "multiwii/ReceiveMSPRawMessageRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReceiveMSPRawMessage-request>)))
  "Returns md5sum for a message object of type '<ReceiveMSPRawMessage-request>"
  "df9470897e4eb0a05a5b4a1532d6a67f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReceiveMSPRawMessage-request)))
  "Returns md5sum for a message object of type 'ReceiveMSPRawMessage-request"
  "df9470897e4eb0a05a5b4a1532d6a67f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReceiveMSPRawMessage-request>)))
  "Returns full string definition for message of type '<ReceiveMSPRawMessage-request>"
  (cl:format cl:nil "uint8 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReceiveMSPRawMessage-request)))
  "Returns full string definition for message of type 'ReceiveMSPRawMessage-request"
  (cl:format cl:nil "uint8 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReceiveMSPRawMessage-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReceiveMSPRawMessage-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ReceiveMSPRawMessage-request
    (cl:cons ':id (id msg))
))
;//! \htmlinclude ReceiveMSPRawMessage-response.msg.html

(cl:defclass <ReceiveMSPRawMessage-response> (roslisp-msg-protocol:ros-message)
  ((msg
    :reader msg
    :initarg :msg
    :type multiwii-msg:MSPRawMessage
    :initform (cl:make-instance 'multiwii-msg:MSPRawMessage)))
)

(cl:defclass ReceiveMSPRawMessage-response (<ReceiveMSPRawMessage-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReceiveMSPRawMessage-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReceiveMSPRawMessage-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multiwii-srv:<ReceiveMSPRawMessage-response> is deprecated: use multiwii-srv:ReceiveMSPRawMessage-response instead.")))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <ReceiveMSPRawMessage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multiwii-srv:msg-val is deprecated.  Use multiwii-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReceiveMSPRawMessage-response>) ostream)
  "Serializes a message object of type '<ReceiveMSPRawMessage-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'msg) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReceiveMSPRawMessage-response>) istream)
  "Deserializes a message object of type '<ReceiveMSPRawMessage-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'msg) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReceiveMSPRawMessage-response>)))
  "Returns string type for a service object of type '<ReceiveMSPRawMessage-response>"
  "multiwii/ReceiveMSPRawMessageResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReceiveMSPRawMessage-response)))
  "Returns string type for a service object of type 'ReceiveMSPRawMessage-response"
  "multiwii/ReceiveMSPRawMessageResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReceiveMSPRawMessage-response>)))
  "Returns md5sum for a message object of type '<ReceiveMSPRawMessage-response>"
  "df9470897e4eb0a05a5b4a1532d6a67f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReceiveMSPRawMessage-response)))
  "Returns md5sum for a message object of type 'ReceiveMSPRawMessage-response"
  "df9470897e4eb0a05a5b4a1532d6a67f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReceiveMSPRawMessage-response>)))
  "Returns full string definition for message of type '<ReceiveMSPRawMessage-response>"
  (cl:format cl:nil "MSPRawMessage msg~%~%~%================================================================================~%MSG: multiwii/MSPRawMessage~%uint8 id~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReceiveMSPRawMessage-response)))
  "Returns full string definition for message of type 'ReceiveMSPRawMessage-response"
  (cl:format cl:nil "MSPRawMessage msg~%~%~%================================================================================~%MSG: multiwii/MSPRawMessage~%uint8 id~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReceiveMSPRawMessage-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReceiveMSPRawMessage-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ReceiveMSPRawMessage-response
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ReceiveMSPRawMessage)))
  'ReceiveMSPRawMessage-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ReceiveMSPRawMessage)))
  'ReceiveMSPRawMessage-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReceiveMSPRawMessage)))
  "Returns string type for a service object of type '<ReceiveMSPRawMessage>"
  "multiwii/ReceiveMSPRawMessage")