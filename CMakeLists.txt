cmake_minimum_required(VERSION 3.16)

# 设置自己的项目名称
project(ProjectName VERSION 0.1 LANGUAGES CXX)

# 包含自定义 CMake 模块
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

# 包含项目设置和依赖查找
include(FindDependencies)
include(ProjectSettings)

add_subdirectory(${PROJECT_NAME})

# 安装规则
include(GNUInstallDirs)
install(TARGETS ${PROJECT_NAME}
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
