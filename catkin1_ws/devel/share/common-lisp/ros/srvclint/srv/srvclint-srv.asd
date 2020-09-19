
(cl:in-package :asdf)

(defsystem "srvclint-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "first" :depends-on ("_package_first"))
    (:file "_package_first" :depends-on ("_package"))
    (:file "prime" :depends-on ("_package_prime"))
    (:file "_package_prime" :depends-on ("_package"))
  ))