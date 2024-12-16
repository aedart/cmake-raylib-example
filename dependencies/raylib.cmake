# Required version
set(RAYLIB_VERSION 5.5)

message("Raylib v${RAYLIB_VERSION}")

# Define where to obtain it from
include(FetchContent)
FetchContent_Declare(
    raylib
    URL https://github.com/raysan5/raylib/archive/refs/tags/${RAYLIB_VERSION}.tar.gz
    FIND_PACKAGE_ARGS ${RAYLIB_VERSION}
)

# Library specific configuration
set(BUILD_EXAMPLES OFF CACHE INTERNAL "")

# Make package available
FetchContent_MakeAvailable(raylib)

# Finally, link to the library
target_link_libraries(${PROJECT_NAME} raylib)
