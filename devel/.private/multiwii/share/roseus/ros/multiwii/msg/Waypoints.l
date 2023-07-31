;; Auto-generated. Do not edit!


(when (boundp 'multiwii::Waypoints)
  (if (not (find-package "MULTIWII"))
    (make-package "MULTIWII"))
  (shadow 'Waypoints (find-package "MULTIWII")))
(unless (find-package "MULTIWII::WAYPOINTS")
  (make-package "MULTIWII::WAYPOINTS"))

(in-package "ROS")
;;//! \htmlinclude Waypoints.msg.html


(defclass multiwii::Waypoints
  :super ros::object
  :slots (_number_points _waypoints ))

(defmethod multiwii::Waypoints
  (:init
   (&key
    ((:number_points __number_points) 0)
    ((:waypoints __waypoints) ())
    )
   (send-super :init)
   (setq _number_points (round __number_points))
   (setq _waypoints __waypoints)
   self)
  (:number_points
   (&optional __number_points)
   (if __number_points (setq _number_points __number_points)) _number_points)
  (:waypoints
   (&rest __waypoints)
   (if (keywordp (car __waypoints))
       (send* _waypoints __waypoints)
     (progn
       (if __waypoints (setq _waypoints (car __waypoints)))
       _waypoints)))
  (:serialization-length
   ()
   (+
    ;; uint8 _number_points
    1
    ;; multiwii/Waypoint[] _waypoints
    (apply #'+ (send-all _waypoints :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _number_points
       (write-byte _number_points s)
     ;; multiwii/Waypoint[] _waypoints
     (write-long (length _waypoints) s)
     (dolist (elem _waypoints)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _number_points
     (setq _number_points (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; multiwii/Waypoint[] _waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoints (let (r) (dotimes (i n) (push (instance multiwii::Waypoint :init) r)) r))
     (dolist (elem- _waypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get multiwii::Waypoints :md5sum-) "cb869cb92178fdbaf5d0e46feaa0ac83")
(setf (get multiwii::Waypoints :datatype-) "multiwii/Waypoints")
(setf (get multiwii::Waypoints :definition-)
      "uint8 number_points
multiwii/Waypoint[] waypoints
================================================================================
MSG: multiwii/Waypoint
uint8 wp_no
uint8 action
uint32 lat
uint32 lon
uint32 alt
uint16 p1
uint16 p2
uint16 p3
uint8 nav_flag
")



(provide :multiwii/Waypoints "cb869cb92178fdbaf5d0e46feaa0ac83")


