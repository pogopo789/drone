;; Auto-generated. Do not edit!


(when (boundp 'unity_robotics_demo_msgs::PosRot)
  (if (not (find-package "UNITY_ROBOTICS_DEMO_MSGS"))
    (make-package "UNITY_ROBOTICS_DEMO_MSGS"))
  (shadow 'PosRot (find-package "UNITY_ROBOTICS_DEMO_MSGS")))
(unless (find-package "UNITY_ROBOTICS_DEMO_MSGS::POSROT")
  (make-package "UNITY_ROBOTICS_DEMO_MSGS::POSROT"))

(in-package "ROS")
;;//! \htmlinclude PosRot.msg.html


(defclass unity_robotics_demo_msgs::PosRot
  :super ros::object
  :slots (_pos_x _pos_y _pos_z _rot_x _rot_y _rot_z _rot_w ))

(defmethod unity_robotics_demo_msgs::PosRot
  (:init
   (&key
    ((:pos_x __pos_x) 0.0)
    ((:pos_y __pos_y) 0.0)
    ((:pos_z __pos_z) 0.0)
    ((:rot_x __rot_x) 0.0)
    ((:rot_y __rot_y) 0.0)
    ((:rot_z __rot_z) 0.0)
    ((:rot_w __rot_w) 0.0)
    )
   (send-super :init)
   (setq _pos_x (float __pos_x))
   (setq _pos_y (float __pos_y))
   (setq _pos_z (float __pos_z))
   (setq _rot_x (float __rot_x))
   (setq _rot_y (float __rot_y))
   (setq _rot_z (float __rot_z))
   (setq _rot_w (float __rot_w))
   self)
  (:pos_x
   (&optional __pos_x)
   (if __pos_x (setq _pos_x __pos_x)) _pos_x)
  (:pos_y
   (&optional __pos_y)
   (if __pos_y (setq _pos_y __pos_y)) _pos_y)
  (:pos_z
   (&optional __pos_z)
   (if __pos_z (setq _pos_z __pos_z)) _pos_z)
  (:rot_x
   (&optional __rot_x)
   (if __rot_x (setq _rot_x __rot_x)) _rot_x)
  (:rot_y
   (&optional __rot_y)
   (if __rot_y (setq _rot_y __rot_y)) _rot_y)
  (:rot_z
   (&optional __rot_z)
   (if __rot_z (setq _rot_z __rot_z)) _rot_z)
  (:rot_w
   (&optional __rot_w)
   (if __rot_w (setq _rot_w __rot_w)) _rot_w)
  (:serialization-length
   ()
   (+
    ;; float64 _pos_x
    8
    ;; float64 _pos_y
    8
    ;; float64 _pos_z
    8
    ;; float64 _rot_x
    8
    ;; float64 _rot_y
    8
    ;; float64 _rot_z
    8
    ;; float64 _rot_w
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _pos_x
       (sys::poke _pos_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pos_y
       (sys::poke _pos_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pos_z
       (sys::poke _pos_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rot_x
       (sys::poke _rot_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rot_y
       (sys::poke _rot_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rot_z
       (sys::poke _rot_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rot_w
       (sys::poke _rot_w (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _pos_x
     (setq _pos_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pos_y
     (setq _pos_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pos_z
     (setq _pos_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rot_x
     (setq _rot_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rot_y
     (setq _rot_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rot_z
     (setq _rot_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rot_w
     (setq _rot_w (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get unity_robotics_demo_msgs::PosRot :md5sum-) "90f86f8fc92c2d6e2f02c50d83b3e47c")
(setf (get unity_robotics_demo_msgs::PosRot :datatype-) "unity_robotics_demo_msgs/PosRot")
(setf (get unity_robotics_demo_msgs::PosRot :definition-)
      "float64 pos_x
float64 pos_y
float64 pos_z
float64 rot_x
float64 rot_y
float64 rot_z
float64 rot_w

")



(provide :unity_robotics_demo_msgs/PosRot "90f86f8fc92c2d6e2f02c50d83b3e47c")


