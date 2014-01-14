FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/pose_msgs/msg"
  "../src/pose_msgs/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_gensrv_py"
  "../src/pose_msgs/srv/__init__.py"
  "../src/pose_msgs/srv/_GetPoses.py"
  "../src/pose_msgs/srv/_GetPose.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
