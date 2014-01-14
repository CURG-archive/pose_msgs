; Auto-generated. Do not edit!


(cl:in-package pose_msgs-msg)


;//! \htmlinclude Transforms.msg.html

(cl:defclass <Transforms> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (transforms
    :reader transforms
    :initarg :transforms
    :type (cl:vector pose_msgs-msg:Transform)
   :initform (cl:make-array 0 :element-type 'pose_msgs-msg:Transform :initial-element (cl:make-instance 'pose_msgs-msg:Transform))))
)

(cl:defclass Transforms (<Transforms>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Transforms>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Transforms)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pose_msgs-msg:<Transforms> is deprecated: use pose_msgs-msg:Transforms instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Transforms>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_msgs-msg:header-val is deprecated.  Use pose_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'transforms-val :lambda-list '(m))
(cl:defmethod transforms-val ((m <Transforms>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_msgs-msg:transforms-val is deprecated.  Use pose_msgs-msg:transforms instead.")
  (transforms m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Transforms>) ostream)
  "Serializes a message object of type '<Transforms>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'transforms))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'transforms))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Transforms>) istream)
  "Deserializes a message object of type '<Transforms>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'transforms) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'transforms)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pose_msgs-msg:Transform))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Transforms>)))
  "Returns string type for a message object of type '<Transforms>"
  "pose_msgs/Transforms")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Transforms)))
  "Returns string type for a message object of type 'Transforms"
  "pose_msgs/Transforms")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Transforms>)))
  "Returns md5sum for a message object of type '<Transforms>"
  "b05261b83f610815089214ecd5899234")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Transforms)))
  "Returns md5sum for a message object of type 'Transforms"
  "b05261b83f610815089214ecd5899234")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Transforms>)))
  "Returns full string definition for message of type '<Transforms>"
  (cl:format cl:nil "# This represents a transormation message~%Header header~%pose_msgs/Transform[] transforms~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: pose_msgs/Transform~%# This represents a transormation message~%~%time time~%string frameSrc~%string frameDes~%geometry_msgs/Vector3 translation~%geometry_msgs/Vector3 rotation~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Transforms)))
  "Returns full string definition for message of type 'Transforms"
  (cl:format cl:nil "# This represents a transormation message~%Header header~%pose_msgs/Transform[] transforms~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: pose_msgs/Transform~%# This represents a transormation message~%~%time time~%string frameSrc~%string frameDes~%geometry_msgs/Vector3 translation~%geometry_msgs/Vector3 rotation~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Transforms>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'transforms) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Transforms>))
  "Converts a ROS message object to a list"
  (cl:list 'Transforms
    (cl:cons ':header (header msg))
    (cl:cons ':transforms (transforms msg))
))
