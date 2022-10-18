cmake_minimum_required(VERSION 2.6)

project("test1")
set(CMAKE_CXX_STANDARD 17)

set(CMAKE_CXX_FLAGS "-std=c++17")

find_package( OpenCV REQUIRED)


include_directories(${OpenCV_INCLUDE_DIR})


add_executable(test1
    main.cc
    )

target_link_libraries(test1 ${OpenCV_LIBRARIES} 
    glfw vulkan X11 Xxf86vm Xrandr Xi
	# lglfw lvulkan ldl lpthread lX11 lXxf86vm lXrandr lXi
)

target_compile_options(test1 PRIVATE -Wall -Wextra -fopenmp -march=native -g -ffast-math -ggdb -fno-omit-frame-pointer -Ofast)
target_compile_definitions(test1 PRIVATE -DCROW_ENABLE_SSL)
target_link_options(test1 PRIVATE -fopenmp -march=native -ffast-math -ggdb -Ofast -fuse-ld=gold -L/usr/local/lib -lcrypto -lssl)
set(CMAKE_EXPORT_COMPILE_COMMANDS 1)
