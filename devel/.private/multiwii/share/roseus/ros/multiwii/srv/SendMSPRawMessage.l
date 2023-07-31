;; Auto-generated. Do not edit!


(when (boundp 'multiwii::SendMSPRawMessage)
  (if (not (find-package "MULTIWII"))
    (make-package "MULTIWII"))
  (shadow 'SendMSPRawMessage (find-package "MULTIWII")))
(unless (find-package "MULTIWII::SENDMSPRAWMESSAGE")
  (make-package "MULTIWII::SENDMSPRAWMESSAGE"))
(unless (find-package "MULTIWII::SENDMSPRAWMESSAGEREQUEST")
  (make-package "MULTIWII::SENDMSPRAWMESSAGEREQUEST"))
(unless (find-package "MULTIWII::SENDMSPRAWMESSAGERESPONSE")
  (make-package "MULTIWII::SENDMSPRAWMESSAGERESPONSE"))

(in-package "ROS")





(defclass multiwii::SendMSPRawMessageRequest
  :super ros::object
  :slots (_msg ))

(defmethod multiwii::SendMSPRawMessageRequest
  (:init
   (&key
    ((:msg __msg) (instance multiwii::MSPRawMessage :init))
    )
   (send-super :init)
   (setq _msg __msg)
   self)
  (:msg
   (&rest __msg)
   (if (keywordp (car __msg))
       (send* _msg __msg)
     (progn
       (if __msg (setq _msg (car __msg)))
       _msg)))
  (:serialization-length
   ()
   (+
    ;; multiwii/MSPRawMessage _msg
    (send _msg :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; multiwii/MSPRawMessage _msg
       (send _msg :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; multiwii/MSPRawMessage _msg
     (send _msg :deserialize buf ptr-) (incf ptr- (send _msg :serialization-length))
   ;;
   self)
  )

(defclass multiwii::SendMSPRawMessageResponse
  :super ros::object
  :slots ())

(defmethod multiwii::SendMSPRawMessageResponse
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

(defclass multiwii::SendMSPRawMessage
  :super ros::object
  :slots ())

(setf (get multiwii::SendMSPRawMessage :md5sum-) "0e01cb4af5047b763cb98e1ac7628835")
(setf (get multiwii::SendMSPRawMessage :datatype-) "multiwii/SendMSPRawMessage")
(setf (get multiwii::SendMSPRawMessage :request) multiwii::SendMSPRawMessageRequest)
(setf (get multiwii::SendMSPRawMessage :response) multiwii::SendMSPRawMessageResponse)

(defmethod multiwii::SendMSPRawMessageRequest
  (:response () (instance multiwii::SendMSPRawMessageResponse :init)))

(setf (get multiwii::SendMSPRawMessageRequest :md5sum-) "0e01cb4af5047b763cb98e1ac7628835")
(setf (get multiwii::SendMSPRawMessageRequest :datatype-) "multiwii/SendMSPRawMessageRequest")
(setf (get multiwii::SendMSPRawMessageRequest :definition-)
      "MSPRawMessage msg

================================================================================
MSG: multiwii/MSPRawMessage
uint8 id
uint8[] data
---

")

(setf (get multiwii::SendMSPRawMessageResponse :md5sum-) "0e01cb4af5047b763cb98e1ac7628835")
(setf (get multiwii::SendMSPRawMessageResponse :datatype-) "multiwii/SendMSPRawMessageResponse")
(setf (get multiwii::SendMSPRawMessageResponse :definition-)
      "MSPRawMessage msg

================================================================================
MSG: multiwii/MSPRawMessage
uint8 id
uint8[] data
---

")



(provide :multiwii/SendMSPRawMessage "0e01cb4af5047b763cb98e1ac7628835")


