cmake_minimum_required(VERSION 3.10)
project(RSAEncryption)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(OPTIMIZATION_FLAGS "-O3" "-march=native" "-funroll-loops")

if(CMAKE_SYSTEM_NAME STREQUAL "Darwin")
    set(GMP_INCLUDE_DIR "/opt/homebrew/include")
    set(GMP_LIBRARY "/opt/homebrew/lib/libgmp.dylib")
    set(GMPXX_LIBRARY "/opt/homebrew/lib/libgmpxx.dylib")
elseif(CMAKE_SYSTEM_NAME STREQUAL "Linux")
    find_path(GMP_INCLUDE_DIR gmp.h)
    find_library(GMP_LIBRARY NAMES gmp)
    find_library(GMPXX_LIBRARY NAMES gmpxx)
endif()

if(NOT GMP_INCLUDE_DIR OR NOT GMP_LIBRARY OR NOT GMPXX_LIBRARY)
    message(FATAL_ERROR "GMP not found. Ensure GMP is installed.")
endif()

include_directories(${GMP_INCLUDE_DIR})
include_directories("${CMAKE_SOURCE_DIR}/include")

find_package(OpenSSL REQUIRED)

find_package(Boost REQUIRED COMPONENTS unit_test_framework)

if(NOT Boost_FOUND)
    message(FATAL_ERROR "Boost not found. Ensure Boost is installed and includes the unit_test_framework component.")
endif()

include_directories(${Boost_INCLUDE_DIRS})


include(FetchContent)

FetchContent_Declare(
  nlohmann_json
  GIT_REPOSITORY https://github.com/nlohmann/json.git
  GIT_TAG v3.11.2 # Upewnij się, że to najnowsza wersja
)

FetchContent_MakeAvailable(nlohmann_json)

# Linkowanie biblioteki nlohmann_json do projektu
set(JSON_BIBLIOTEKA nlohmann_json::nlohmann_json)

include(FetchContent)

FetchContent_Declare(
  nlohmann_json
  GIT_REPOSITORY https://github.com/nlohmann/json.git
  GIT_TAG v3.11.2 # Upewnij się, że to najnowsza wersja
)

FetchContent_MakeAvailable(nlohmann_json)

# Linkowanie biblioteki nlohmann_json do projektu
set(JSON_BIBLIOTEKA nlohmann_json::nlohmann_json)
enable_testing()

include(${CMAKE_SOURCE_DIR}/cmake/App.cmake)
include(${CMAKE_SOURCE_DIR}/cmake/Library.cmake)
include(${CMAKE_SOURCE_DIR}/cmake/Tests.cmake)