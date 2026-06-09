cmake_minimum_required(VERSION 3.8)
project(ed_interfaces)

find_package(ament_cmake REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(shape_msgs REQUIRED)
find_package(tue_serialization_interfaces REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/EntityInfo.msg"
  "msg/SubVolume.msg"
  "msg/Volume.msg"
  "srv/GetGUICommand.srv"
  "srv/GetMeasurements.srv"
  "srv/RaiseEvent.srv"
  "srv/SetClick.srv"
  "srv/SetLabel.srv"
  "srv/SimpleQuery.srv"
  "srv/LoadPlugin.srv"
  "srv/Query.srv"
  "srv/UpdateSrv.srv"
  "srv/Configure.srv"
  "srv/Reset.srv"
  "srv/SetEntity.srv"
  DEPENDENCIES
    builtin_interfaces
    geometry_msgs
    shape_msgs
    tue_serialization_interfaces
  ADD_LINTER_TESTS
)

ament_export_dependencies(rosidl_default_runtime)

if(BUILD_TESTING)
  find_package(ament_cmake_lint_cmake REQUIRED)
  find_package(ament_cmake_xmllint REQUIRED)
  ament_lint_cmake(MAX_LINE_LENGTH 120 "--filter=
    +convention/filename,
    +linelength,
    +package/consistency,
    +package/stdargs,
    +readability/logic,
    +readability/mixedcase,
    +readability/wonkycase,
    +syntax,+whitespace/eol,
    +whitespace/extra,
    +whitespace/indent,
    +whitespace/mismatch,
    +whitespace/newline,
    +whitespace/tabs"
  )
  ament_xmllint(MAX_LINE_LENGTH 120)
endif()

ament_package()
