; Auto-generated. Do not edit!


(cl:in-package pose_msgs-msg)


;//! \htmlinclude Transform.msg.html

(cl:defclass <Transform> (roslisp-msg-protocol:ros-message)
  ((time
    :reader time
    :initarg :time
    :type cl:real
    :initform 0)
   (frameSrc
    :reader frameSrc
    :initarg :frameSrc
    :type cl:string
    :initform "")
   (frameDes
    :reader frameDes
    :initarg :frameDes
    :type cl:string
    :initform "")
   (translation
    :reader translation
    :initarg :translation
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (rotation
    :reader rotation
    :initarg :rotation
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass Transform (<Transform>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Transform>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Transform)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pose_msgs-msg:<Transform> is deprecated: use pose_msgs-msg:Transform instead.")))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <Transform>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_msgs-msg:time-val is deprecated.  Use pose_msgs-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'frameSrc-val :lambda-list '(m))
(cl:defmethod frameSrc-val ((m <Transform>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_msgs-msg:frameSrc-val is deprecated.  Use pose_msgs-msg:frameSrc instead.")
  (frameSrc m))

(cl:ensure-generic-function 'frameDes-val :lambda-list '(m))
(cl:defmethod frameDes-val ((m <Transform>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_msgs-msg:frameDes-val is deprecated.  Use pose_msgs-msg:frameDes instead.")
  (frameDes m))

(cl:ensure-generic-function 'translation-val :lambda-list '(m))
(cl:defmethod translation-val ((m <Transform>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_msgs-msg:translation-val is deprecated.  Use pose_msgs-msg:translation instead.")
  (translation m))

(cl:ensure-generic-function 'rotation-val :lambda-list '(m))
(cl:defmethod rotation-val ((m <Transform>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_msgs-msg:rotation-val is deprecated.  Use pose_msgs-msg:rotation instead.")
  (rotation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Transform>) ostream)
  "Serializes a message object of type '<Transform>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'time) (cl:floor (cl:slot-value msg 'time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frameSrc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frameSrc))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frameDes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frameDes))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'translation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rotation) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Transform>) istream)
  "Deserializes a message object of type '<Transform>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frameSrc) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frameSrc) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frameDes) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frameDes) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'translation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rotation) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Transform>)))
  "Returns string type for a message object of type '<Transform>"
  "pose_msgs/Transform")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Transform)))
  "Returns string type for a message object of type 'Transform"
  "pose_msgs/Transform")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Transform>)))
  "Returns md5sum for a message object of type '<Transform>"
  "f352e813612cbf84378943a6fb493d37")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Transform)))
  "Returns md5sum for a message object of type 'Transform"
  "f352e813612cbf84378943a6fb493d37")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Transform>)))
  "Returns full string definition for message of type '<Transform>"
  (cl:format cl:nil "# This represents a transormation message~%~%time time~%string frameSrc~%string frameDes~%geometry_msgs/Vector3 translation~%geometry_msgs/Vector3 rotation~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Transform)))
  "Returns full string definition for message of type 'Transform"
  (cl:format cl:nil "# This represents a transormation message~%~%time time~%string frameSrc~%string frameDes~%geometry_msgs/Vector3 translation~%geometry_msgs/Vector3 rotation~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Transform>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'frameSrc))
     4 (cl:length (cl:slot-value msg 'frameDes))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'translation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rotation))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Transform>))
  "Converts a ROS message object to a list"
  (cl:list 'Transform
    (cl:cons ':time (time msg))
    (cl:cons ':frameSrc (frameSrc msg))
    (cl:cons ':frameDes (frameDes msg))
    (cl:cons ':translation (translation msg))
    (cl:cons ':rotation (rotation msg))
))
