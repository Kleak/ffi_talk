cmake_minimum_required(VERSION 3.7 FATAL_ERROR)
project(fibonacci_library VERSION 1.0.0 LANGUAGES C)
add_library(fibonacci_library SHARED fibonacci.c fibonacci.def)

set_target_properties(fibonacci_library PROPERTIES
    PUBLIC_HEADER fibonacci.h
    VERSION ${PROJECT_VERSION}
    SOVERSION 1
    OUTPUT_NAME "fibonacci"
)