FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/pose_msgs/msg"
  "../src/pose_msgs/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/test-results"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/test-results.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
