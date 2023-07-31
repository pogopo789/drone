; Auto-generated. Do not edit!


(cl:in-package multiwii-msg)


;//! \htmlinclude MSPRawMessage.msg.html

(cl:defclass <MSPRawMessage> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass MSPRawMessage (<MSPRawMessage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MSPRawMessage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MSPRawMessage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multiwii-msg:<MSPRawMessage> is deprecated: use multiwii-msg:MSPRawMessage instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <MSPRawMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multiwii-msg:id-val is deprecated.  Use multiwii-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <MSPRawMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multiwii-msg:data-val is deprecated.  Use multiwii-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MSPRawMessage>) ostream)
  "Serializes a message object of type '<MSPRawMessage>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MSPRawMessage>) istream)
  "Deserializes a message object of type '<MSPRawMessage>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MSPRawMessage>)))
  "Returns string type for a message object of type '<MSPRawMessage>"
  "multiwii/MSPRawMessage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MSPRawMessage)))
  "Returns string type for a message object of type 'MSPRawMessage"
  "multiwii/MSPRawMessage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MSPRawMessage>)))
  "Returns md5sum for a message object of type '<MSPRawMessage>"
  "bd42210221b2280d84f6ed0e3b881126")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MSPRawMessage)))
  "Returns md5sum for a message object of type 'MSPRawMessage"
  "bd42210221b2280d84f6ed0e3b881126")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MSPRawMessage>)))
  "Returns full string definition for message of type '<MSPRawMessage>"
  (cl:format cl:nil "uint8 id~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MSPRawMessage)))
  "Returns full string definition for message of type 'MSPRawMessage"
  (cl:format cl:nil "uint8 id~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MSPRawMessage>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MSPRawMessage>))
  "Converts a ROS message object to a list"
  (cl:list 'MSPRawMessage
    (cl:cons ':id (id msg))
    (cl:cons ':data (data msg))
))
