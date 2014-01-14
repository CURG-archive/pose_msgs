FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/pose_msgs/msg"
  "../src/pose_msgs/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_genmsg_lisp"
  "../msg_gen/lisp/Transform.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_Transform.lisp"
  "../msg_gen/lisp/Transforms.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_Transforms.lisp"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_lisp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
