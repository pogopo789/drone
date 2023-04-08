
(cl:in-package :asdf)

(defsystem "multiwii-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MSPRawMessage" :depends-on ("_package_MSPRawMessage"))
    (:file "_package_MSPRawMessage" :depends-on ("_package"))
  ))