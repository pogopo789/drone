;; Auto-generated. Do not edit!


(when (boundp 'unity_robotics_demo_msgs::PositionService)
  (if (not (find-package "UNITY_ROBOTICS_DEMO_MSGS"))
    (make-package "UNITY_ROBOTICS_DEMO_MSGS"))
  (shadow 'PositionService (find-package "UNITY_ROBOTICS_DEMO_MSGS")))
(unless (find-package "UNITY_ROBOTICS_DEMO_MSGS::POSITIONSERVICE")
  (make-package "UNITY_ROBOTICS_DEMO_MSGS::POSITIONSERVICE"))
(unless (find-package "UNITY_ROBOTICS_DEMO_MSGS::POSITIONSERVICEREQUEST")
  (make-package "UNITY_ROBOTICS_DEMO_MSGS::POSITIONSERVICEREQUEST"))
(unless (find-package "UNITY_ROBOTICS_DEMO_MSGS::POSITIONSERVICERESPONSE")
  (make-package "UNITY_ROBOTICS_DEMO_MSGS::POSITIONSERVICERESPONSE"))

(in-package "ROS")





(defclass unity_robotics_demo_msgs::PositionServiceRequest
  :super ros::object
  :slots (_input ))

(defmethod unity_robotics_demo_msgs::PositionServiceRequest
  (:init
   (&key
    ((:input __input) (instance unity_robotics_demo_msgs::PosRot :init))
    )
   (send-super :init)
   (setq _input __input)
   self)
  (:input
   (&rest __input)
   (if (keywordp (car __input))
       (send* _input __input)
     (progn
       (if __input (setq _input (car __input)))
       _input)))
  (:serialization-length
   ()
   (+
    ;; unity_robotics_demo_msgs/PosRot _input
    (send _input :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; unity_robotics_demo_msgs/PosRot _input
       (send _input :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; unity_robotics_demo_msgs/PosRot _input
     (send _input :deserialize buf ptr-) (incf ptr- (send _input :serialization-length))
   ;;
   self)
  )

(defclass unity_robotics_demo_msgs::PositionServiceResponse
  :super ros::object
  :slots (_output ))

(defmethod unity_robotics_demo_msgs::PositionServiceResponse
  (:init
   (&key
    ((:output __output) (instance unity_robotics_demo_msgs::PosRot :init))
    )
   (send-super :init)
   (setq _output __output)
   self)
  (:output
   (&rest __output)
   (if (keywordp (car __output))
       (send* _output __output)
     (progn
       (if __output (setq _output (car __output)))
       _output)))
  (:serialization-length
   ()
   (+
    ;; unity_robotics_demo_msgs/PosRot _output
    (send _output :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; unity_robotics_demo_msgs/PosRot _output
       (send _output :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; unity_robotics_demo_msgs/PosRot _output
     (send _output :deserialize buf ptr-) (incf ptr- (send _output :serialization-length))
   ;;
   self)
  )

(defclass unity_robotics_demo_msgs::PositionService
  :super ros::object
  :slots ())

(setf (get unity_robotics_demo_msgs::PositionService :md5sum-) "c4e728513c3fb3631da892181abf897f")
(setf (get unity_robotics_demo_msgs::PositionService :datatype-) "unity_robotics_demo_msgs/PositionService")
(setf (get unity_robotics_demo_msgs::PositionService :request) unity_robotics_demo_msgs::PositionServiceRequest)
(setf (get unity_robotics_demo_msgs::PositionService :response) unity_robotics_demo_msgs::PositionServiceResponse)

(defmethod unity_robotics_demo_msgs::PositionServiceRequest
  (:response () (instance unity_robotics_demo_msgs::PositionServiceResponse :init)))

(setf (get unity_robotics_demo_msgs::PositionServiceRequest :md5sum-) "c4e728513c3fb3631da892181abf897f")
(setf (get unity_robotics_demo_msgs::PositionServiceRequest :datatype-) "unity_robotics_demo_msgs/PositionServiceRequest")
(setf (get unity_robotics_demo_msgs::PositionServiceRequest :definition-)
      "PosRot input

================================================================================
MSG: unity_robotics_demo_msgs/PosRot
float64 pos_x
float64 pos_y
float64 pos_z
float64 rot_x
float64 rot_y
float64 rot_z
float64 rot_w
---
PosRot output

================================================================================
MSG: unity_robotics_demo_msgs/PosRot
float64 pos_x
float64 pos_y
float64 pos_z
float64 rot_x
float64 rot_y
float64 rot_z
float64 rot_w
")

(setf (get unity_robotics_demo_msgs::PositionServiceResponse :md5sum-) "c4e728513c3fb3631da892181abf897f")
(setf (get unity_robotics_demo_msgs::PositionServiceResponse :datatype-) "unity_robotics_demo_msgs/PositionServiceResponse")
(setf (get unity_robotics_demo_msgs::PositionServiceResponse :definition-)
      "PosRot input

================================================================================
MSG: unity_robotics_demo_msgs/PosRot
float64 pos_x
float64 pos_y
float64 pos_z
float64 rot_x
float64 rot_y
float64 rot_z
float64 rot_w
---
PosRot output

================================================================================
MSG: unity_robotics_demo_msgs/PosRot
float64 pos_x
float64 pos_y
float64 pos_z
float64 rot_x
float64 rot_y
float64 rot_z
float64 rot_w
")



(provide :unity_robotics_demo_msgs/PositionService "c4e728513c3fb3631da892181abf897f")


