string id
string type
string[] types

float32 existence_probability

builtin_interfaces/Time last_update_time
builtin_interfaces/Time creation_time

bool has_shape

bool has_pose
geometry_msgs/Pose pose

# Custom data
string data

string[] flags

# Convex Hull
geometry_msgs/Point[] convex_hull
float32 z_min
float32 z_max

# Volumes
Volume[] volumes
