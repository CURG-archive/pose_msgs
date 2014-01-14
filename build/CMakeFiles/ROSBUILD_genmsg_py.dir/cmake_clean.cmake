FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/pose_msgs/msg"
  "../src/pose_msgs/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/pose_msgs/msg/__init__.py"
  "../src/pose_msgs/msg/_Transform.py"
  "../src/pose_msgs/msg/_Transforms.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
