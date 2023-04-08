
(cl:in-package :asdf)

(defsystem "unity_robotics_demo_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "PosRot" :depends-on ("_package_PosRot"))
    (:file "_package_PosRot" :depends-on ("_package"))
    (:file "Pose" :depends-on ("_package_Pose"))
    (:file "_package_Pose" :depends-on ("_package"))
    (:file "UnityColor" :depends-on ("_package_UnityColor"))
    (:file "_package_UnityColor" :depends-on ("_package"))
  ))