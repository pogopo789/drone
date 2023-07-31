
(cl:in-package :asdf)

(defsystem "multiwii-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :multiwii-msg
)
  :components ((:file "_package")
    (:file "ReceiveMSPRawMessage" :depends-on ("_package_ReceiveMSPRawMessage"))
    (:file "_package_ReceiveMSPRawMessage" :depends-on ("_package"))
    (:file "SendMSPRawMessage" :depends-on ("_package_SendMSPRawMessage"))
    (:file "_package_SendMSPRawMessage" :depends-on ("_package"))
  ))