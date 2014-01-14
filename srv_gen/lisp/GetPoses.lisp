; Auto-generated. Do not edit!


(cl:in-package pose_msgs-srv)


;//! \htmlinclude GetPoses-request.msg.html

(cl:defclass <GetPoses-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetPoses-request (<GetPoses-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPoses-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPoses-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pose_msgs-srv:<GetPoses-request> is deprecated: use pose_msgs-srv:GetPoses-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPoses-request>) ostream)
  "Serializes a message object of type '<GetPoses-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPoses-request>) istream)
  "Deserializes a message object of type '<GetPoses-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPoses-request>)))
  "Returns string type for a service object of type '<GetPoses-request>"
  "pose_msgs/GetPosesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPoses-request)))
  "Returns string type for a service object of type 'GetPoses-request"
  "pose_msgs/GetPosesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPoses-request>)))
  "Returns md5sum for a message object of type '<GetPoses-request>"
  "61741a788bceb5729711c080d587cc52")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPoses-request)))
  "Returns md5sum for a message object of type 'GetPoses-request"
  "61741a788bceb5729711c080d587cc52")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPoses-request>)))
  "Returns full string definition for message of type '<GetPoses-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPoses-request)))
  "Returns full string definition for message of type 'GetPoses-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPoses-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPoses-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPoses-request
))
;//! \htmlinclude GetPoses-response.msg.html

(cl:defclass <GetPoses-response> (roslisp-msg-protocol:ros-message)
  ((transforms
    :reader transforms
    :initarg :transforms
    :type pose_msgs-msg:Transforms
    :initform (cl:make-instance 'pose_msgs-msg:Transforms)))
)

(cl:defclass GetPoses-response (<GetPoses-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPoses-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPoses-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pose_msgs-srv:<GetPoses-response> is deprecated: use pose_msgs-srv:GetPoses-response instead.")))

(cl:ensure-generic-function 'transforms-val :lambda-list '(m))
(cl:defmethod transforms-val ((m <GetPoses-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_msgs-srv:transforms-val is deprecated.  Use pose_msgs-srv:transforms instead.")
  (transforms m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPoses-response>) ostream)
  "Serializes a message object of type '<GetPoses-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transforms) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPoses-response>) istream)
  "Deserializes a message object of type '<GetPoses-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transforms) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPoses-response>)))
  "Returns string type for a service object of type '<GetPoses-response>"
  "pose_msgs/GetPosesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPoses-response)))
  "Returns string type for a service object of type 'GetPoses-response"
  "pose_msgs/GetPosesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPoses-response>)))
  "Returns md5sum for a message object of type '<GetPoses-response>"
  "61741a788bceb5729711c080d587cc52")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPoses-response)))
  "Returns md5sum for a message object of type 'GetPoses-response"
  "61741a788bceb5729711c080d587cc52")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPoses-response>)))
  "Returns full string definition for message of type '<GetPoses-response>"
  (cl:format cl:nil "pose_msgs/Transforms transforms~%~%================================================================================~%MSG: pose_msgs/Transforms~%# This represents a transormation message~%Header header~%pose_msgs/Transform[] transforms~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: pose_msgs/Transform~%# This represents a transormation message~%~%time time~%string frameSrc~%string frameDes~%geometry_msgs/Vector3 translation~%geometry_msgs/Vector3 rotation~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPoses-response)))
  "Returns full string definition for message of type 'GetPoses-response"
  (cl:format cl:nil "pose_msgs/Transforms transforms~%~%================================================================================~%MSG: pose_msgs/Transforms~%# This represents a transormation message~%Header header~%pose_msgs/Transform[] transforms~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: pose_msgs/Transform~%# This represents a transormation message~%~%time time~%string frameSrc~%string frameDes~%geometry_msgs/Vector3 translation~%geometry_msgs/Vector3 rotation~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPoses-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transforms))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPoses-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPoses-response
    (cl:cons ':transforms (transforms msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPoses)))
  'GetPoses-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPoses)))
  'GetPoses-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPoses)))
  "Returns string type for a service object of type '<GetPoses>"
  "pose_msgs/GetPoses")