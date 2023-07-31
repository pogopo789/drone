;; Auto-generated. Do not edit!


(when (boundp 'multiwii::MSPRawMessage)
  (if (not (find-package "MULTIWII"))
    (make-package "MULTIWII"))
  (shadow 'MSPRawMessage (find-package "MULTIWII")))
(unless (find-package "MULTIWII::MSPRAWMESSAGE")
  (make-package "MULTIWII::MSPRAWMESSAGE"))

(in-package "ROS")
;;//! \htmlinclude MSPRawMessage.msg.html


(defclass multiwii::MSPRawMessage
  :super ros::object
  :slots (_id _data ))

(defmethod multiwii::MSPRawMessage
  (:init
   (&key
    ((:id __id) 0)
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _data __data)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get multiwii::MSPRawMessage :md5sum-) "bd42210221b2280d84f6ed0e3b881126")
(setf (get multiwii::MSPRawMessage :datatype-) "multiwii/MSPRawMessage")
(setf (get multiwii::MSPRawMessage :definition-)
      "uint8 id
uint8[] data

")



(provide :multiwii/MSPRawMessage "bd42210221b2280d84f6ed0e3b881126")


