cmake_minimum_required(VERSION 3.5)
project(game)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_subdirectory(libs/glfw)

add_library(glad STATIC libs/glad/src/glad.c)
target_include_directories(glad PUBLIC libs/glad/include)

# ImGui
file(GLOB IMGUI_SRC
    libs/imgui/imgui.cpp
    libs/imgui/imgui_demo.cpp
    libs/imgui/imgui_draw.cpp
    libs/imgui/imgui_tables.cpp
    libs/imgui/imgui_widgets.cpp
    libs/imgui/imgui_impl_glfw.cpp
    libs/imgui/imgui_impl_opengl3.cpp
)

add_library(imgui STATIC ${IMGUI_SRC})
target_include_directories(imgui PUBLIC libs/imgui)
target_link_libraries(imgui glfw)

# Fontes do seu jogo
file(GLOB_RECURSE GAME_SRC src/*.cpp)
add_executable(game ${GAME_SRC})

target_link_libraries(game PRIVATE glfw glad imgui)
