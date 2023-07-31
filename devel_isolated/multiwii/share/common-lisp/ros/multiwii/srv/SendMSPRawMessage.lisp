; Auto-generated. Do not edit!


(cl:in-package multiwii-srv)


;//! \htmlinclude SendMSPRawMessage-request.msg.html

(cl:defclass <SendMSPRawMessage-request> (roslisp-msg-protocol:ros-message)
  ((msg
    :reader msg
    :initarg :msg
    :type multiwii-msg:MSPRawMessage
    :initform (cl:make-instance 'multiwii-msg:MSPRawMessage)))
)

(cl:defclass SendMSPRawMessage-request (<SendMSPRawMessage-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendMSPRawMessage-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendMSPRawMessage-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multiwii-srv:<SendMSPRawMessage-request> is deprecated: use multiwii-srv:SendMSPRawMessage-request instead.")))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <SendMSPRawMessage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multiwii-srv:msg-val is deprecated.  Use multiwii-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendMSPRawMessage-request>) ostream)
  "Serializes a message object of type '<SendMSPRawMessage-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'msg) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendMSPRawMessage-request>) istream)
  "Deserializes a message object of type '<SendMSPRawMessage-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'msg) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendMSPRawMessage-request>)))
  "Returns string type for a service object of type '<SendMSPRawMessage-request>"
  "multiwii/SendMSPRawMessageRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendMSPRawMessage-request)))
  "Returns string type for a service object of type 'SendMSPRawMessage-request"
  "multiwii/SendMSPRawMessageRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendMSPRawMessage-request>)))
  "Returns md5sum for a message object of type '<SendMSPRawMessage-request>"
  "0e01cb4af5047b763cb98e1ac7628835")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendMSPRawMessage-request)))
  "Returns md5sum for a message object of type 'SendMSPRawMessage-request"
  "0e01cb4af5047b763cb98e1ac7628835")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendMSPRawMessage-request>)))
  "Returns full string definition for message of type '<SendMSPRawMessage-request>"
  (cl:format cl:nil "MSPRawMessage msg~%~%================================================================================~%MSG: multiwii/MSPRawMessage~%uint8 id~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendMSPRawMessage-request)))
  "Returns full string definition for message of type 'SendMSPRawMessage-request"
  (cl:format cl:nil "MSPRawMessage msg~%~%================================================================================~%MSG: multiwii/MSPRawMessage~%uint8 id~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendMSPRawMessage-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendMSPRawMessage-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SendMSPRawMessage-request
    (cl:cons ':msg (msg msg))
))
;//! \htmlinclude SendMSPRawMessage-response.msg.html

(cl:defclass <SendMSPRawMessage-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SendMSPRawMessage-response (<SendMSPRawMessage-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendMSPRawMessage-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendMSPRawMessage-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multiwii-srv:<SendMSPRawMessage-response> is deprecated: use multiwii-srv:SendMSPRawMessage-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendMSPRawMessage-response>) ostream)
  "Serializes a message object of type '<SendMSPRawMessage-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendMSPRawMessage-response>) istream)
  "Deserializes a message object of type '<SendMSPRawMessage-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendMSPRawMessage-response>)))
  "Returns string type for a service object of type '<SendMSPRawMessage-response>"
  "multiwii/SendMSPRawMessageResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendMSPRawMessage-response)))
  "Returns string type for a service object of type 'SendMSPRawMessage-response"
  "multiwii/SendMSPRawMessageResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendMSPRawMessage-response>)))
  "Returns md5sum for a message object of type '<SendMSPRawMessage-response>"
  "0e01cb4af5047b763cb98e1ac7628835")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendMSPRawMessage-response)))
  "Returns md5sum for a message object of type 'SendMSPRawMessage-response"
  "0e01cb4af5047b763cb98e1ac7628835")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendMSPRawMessage-response>)))
  "Returns full string definition for message of type '<SendMSPRawMessage-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendMSPRawMessage-response)))
  "Returns full string definition for message of type 'SendMSPRawMessage-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendMSPRawMessage-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendMSPRawMessage-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SendMSPRawMessage-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SendMSPRawMessage)))
  'SendMSPRawMessage-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SendMSPRawMessage)))
  'SendMSPRawMessage-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendMSPRawMessage)))
  "Returns string type for a service object of type '<SendMSPRawMessage>"
  "multiwii/SendMSPRawMessage")