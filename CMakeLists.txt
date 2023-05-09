cmake_minimum_required (VERSION 3.22)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

set(PROJECT_NAME simbroker)
set(VERSI 0.0.1)

set(MY_FLAGS "-Wall -g -O0")
set(CMAKE_CXX_FLAGS ${MY_FLAGS})
set(CMAKE_C_FLAGS ${MY_FLAGS})

# Organize the source code
set(INCL_DIR include)
list(APPEND INCL_DIR /usr/local/include/proton)

set(SRC_DIR src)
set(SRC_FILES ${SRC_DIR}/simple_broker.cpp)
list(APPEND SRC_FILES ${SRC_DIR}/main.cpp)

# Organize the links with the shared libraries
set(LINKED_FLAGS "-L/usr/local/lib")

# Add libraries
set(LINKED_LIBS qpid-proton-core)
list(APPEND LINKED_LIBS qpid-proton-cpp)

### Create an executable file
project(${PROJECT_NAME} VERSION ${VERSI})

include_directories(${INCL_DIR})
add_executable(${PROJECT_NAME} ${SRC_FILES})

### Link the external libraries
target_link_libraries(${PROJECT_NAME} ${LINKED_FLAGS} ${LINKED_LIBS})