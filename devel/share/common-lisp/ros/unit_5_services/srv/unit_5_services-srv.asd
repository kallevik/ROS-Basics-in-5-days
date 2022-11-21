
(cl:in-package :asdf)

(defsystem "unit_5_services-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "BB8CustomServiceMessage" :depends-on ("_package_BB8CustomServiceMessage"))
    (:file "_package_BB8CustomServiceMessage" :depends-on ("_package"))
  ))