;; Auto-generated. Do not edit!


(when (boundp 'multiwii::Waypoint)
  (if (not (find-package "MULTIWII"))
    (make-package "MULTIWII"))
  (shadow 'Waypoint (find-package "MULTIWII")))
(unless (find-package "MULTIWII::WAYPOINT")
  (make-package "MULTIWII::WAYPOINT"))

(in-package "ROS")
;;//! \htmlinclude Waypoint.msg.html


(defclass multiwii::Waypoint
  :super ros::object
  :slots (_wp_no _action _lat _lon _alt _p1 _p2 _p3 _nav_flag ))

(defmethod multiwii::Waypoint
  (:init
   (&key
    ((:wp_no __wp_no) 0)
    ((:action __action) 0)
    ((:lat __lat) 0)
    ((:lon __lon) 0)
    ((:alt __alt) 0)
    ((:p1 __p1) 0)
    ((:p2 __p2) 0)
    ((:p3 __p3) 0)
    ((:nav_flag __nav_flag) 0)
    )
   (send-super :init)
   (setq _wp_no (round __wp_no))
   (setq _action (round __action))
   (setq _lat (round __lat))
   (setq _lon (round __lon))
   (setq _alt (round __alt))
   (setq _p1 (round __p1))
   (setq _p2 (round __p2))
   (setq _p3 (round __p3))
   (setq _nav_flag (round __nav_flag))
   self)
  (:wp_no
   (&optional __wp_no)
   (if __wp_no (setq _wp_no __wp_no)) _wp_no)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:lon
   (&optional __lon)
   (if __lon (setq _lon __lon)) _lon)
  (:alt
   (&optional __alt)
   (if __alt (setq _alt __alt)) _alt)
  (:p1
   (&optional __p1)
   (if __p1 (setq _p1 __p1)) _p1)
  (:p2
   (&optional __p2)
   (if __p2 (setq _p2 __p2)) _p2)
  (:p3
   (&optional __p3)
   (if __p3 (setq _p3 __p3)) _p3)
  (:nav_flag
   (&optional __nav_flag)
   (if __nav_flag (setq _nav_flag __nav_flag)) _nav_flag)
  (:serialization-length
   ()
   (+
    ;; uint8 _wp_no
    1
    ;; uint8 _action
    1
    ;; uint32 _lat
    4
    ;; uint32 _lon
    4
    ;; uint32 _alt
    4
    ;; uint16 _p1
    2
    ;; uint16 _p2
    2
    ;; uint16 _p3
    2
    ;; uint8 _nav_flag
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _wp_no
       (write-byte _wp_no s)
     ;; uint8 _action
       (write-byte _action s)
     ;; uint32 _lat
       (write-long _lat s)
     ;; uint32 _lon
       (write-long _lon s)
     ;; uint32 _alt
       (write-long _alt s)
     ;; uint16 _p1
       (write-word _p1 s)
     ;; uint16 _p2
       (write-word _p2 s)
     ;; uint16 _p3
       (write-word _p3 s)
     ;; uint8 _nav_flag
       (write-byte _nav_flag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _wp_no
     (setq _wp_no (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _action
     (setq _action (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _lat
     (setq _lat (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _lon
     (setq _lon (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _alt
     (setq _alt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _p1
     (setq _p1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _p2
     (setq _p2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _p3
     (setq _p3 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _nav_flag
     (setq _nav_flag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get multiwii::Waypoint :md5sum-) "cadd3e271d812dac2f4b57212407a0e8")
(setf (get multiwii::Waypoint :datatype-) "multiwii/Waypoint")
(setf (get multiwii::Waypoint :definition-)
      "uint8 wp_no
uint8 action
uint32 lat
uint32 lon
uint32 alt
uint16 p1
uint16 p2
uint16 p3
uint8 nav_flag
")



(provide :multiwii/Waypoint "cadd3e271d812dac2f4b57212407a0e8")


