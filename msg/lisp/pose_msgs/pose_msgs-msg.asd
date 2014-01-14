
(in-package :asdf)

(defsystem "pose_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
 :roslib-msg
)
  :components ((:file "_package")
    (:file "Transform" :depends-on ("_package"))
    (:file "_package_Transform" :depends-on ("_package"))
    (:file "Transforms" :depends-on ("_package"))
    (:file "_package_Transforms" :depends-on ("_package"))
    ))
