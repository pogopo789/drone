;; Auto-generated. Do not edit!


(when (boundp 'multiwii::ReceiveMSPRawMessage)
  (if (not (find-package "MULTIWII"))
    (make-package "MULTIWII"))
  (shadow 'ReceiveMSPRawMessage (find-package "MULTIWII")))
(unless (find-package "MULTIWII::RECEIVEMSPRAWMESSAGE")
  (make-package "MULTIWII::RECEIVEMSPRAWMESSAGE"))
(unless (find-package "MULTIWII::RECEIVEMSPRAWMESSAGEREQUEST")
  (make-package "MULTIWII::RECEIVEMSPRAWMESSAGEREQUEST"))
(unless (find-package "MULTIWII::RECEIVEMSPRAWMESSAGERESPONSE")
  (make-package "MULTIWII::RECEIVEMSPRAWMESSAGERESPONSE"))

(in-package "ROS")





(defclass multiwii::ReceiveMSPRawMessageRequest
  :super ros::object
  :slots (_id ))

(defmethod multiwii::ReceiveMSPRawMessageRequest
  (:init
   (&key
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass multiwii::ReceiveMSPRawMessageResponse
  :super ros::object
  :slots (_msg ))

(defmethod multiwii::ReceiveMSPRawMessageResponse
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

(defclass multiwii::ReceiveMSPRawMessage
  :super ros::object
  :slots ())

(setf (get multiwii::ReceiveMSPRawMessage :md5sum-) "df9470897e4eb0a05a5b4a1532d6a67f")
(setf (get multiwii::ReceiveMSPRawMessage :datatype-) "multiwii/ReceiveMSPRawMessage")
(setf (get multiwii::ReceiveMSPRawMessage :request) multiwii::ReceiveMSPRawMessageRequest)
(setf (get multiwii::ReceiveMSPRawMessage :response) multiwii::ReceiveMSPRawMessageResponse)

(defmethod multiwii::ReceiveMSPRawMessageRequest
  (:response () (instance multiwii::ReceiveMSPRawMessageResponse :init)))

(setf (get multiwii::ReceiveMSPRawMessageRequest :md5sum-) "df9470897e4eb0a05a5b4a1532d6a67f")
(setf (get multiwii::ReceiveMSPRawMessageRequest :datatype-) "multiwii/ReceiveMSPRawMessageRequest")
(setf (get multiwii::ReceiveMSPRawMessageRequest :definition-)
      "uint8 id
---
MSPRawMessage msg


================================================================================
MSG: multiwii/MSPRawMessage
uint8 id
uint8[] data
")

(setf (get multiwii::ReceiveMSPRawMessageResponse :md5sum-) "df9470897e4eb0a05a5b4a1532d6a67f")
(setf (get multiwii::ReceiveMSPRawMessageResponse :datatype-) "multiwii/ReceiveMSPRawMessageResponse")
(setf (get multiwii::ReceiveMSPRawMessageResponse :definition-)
      "uint8 id
---
MSPRawMessage msg


================================================================================
MSG: multiwii/MSPRawMessage
uint8 id
uint8[] data
")



(provide :multiwii/ReceiveMSPRawMessage "df9470897e4eb0a05a5b4a1532d6a67f")


