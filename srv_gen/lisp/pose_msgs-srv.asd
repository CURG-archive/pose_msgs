
(cl:in-package :asdf)

(defsystem "pose_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :pose_msgs-msg
)
  :components ((:file "_package")
    (:file "GetPoses" :depends-on ("_package_GetPoses"))
    (:file "_package_GetPoses" :depends-on ("_package"))
    (:file "GetPose" :depends-on ("_package_GetPose"))
    (:file "_package_GetPose" :depends-on ("_package"))
  ))