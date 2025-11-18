set(TARGET_NAME unity-lib)

add_library(${TARGET_NAME} STATIC)

target_sources(${TARGET_NAME} PRIVATE
    UnityDesignLibrary.h
    UnityDesignLibrary.cpp
    UnityDesignRes.qrc
    Utils.h
    Utils.cpp
    UnityStyle.h
    UnityStyle.cpp
)

target_link_libraries(${TARGET_NAME} PRIVATE
    Qt6::Core
    Qt6::Quick
    Qt6::QuickControls2
    Qt6::Core5Compat
)

target_include_directories(${TARGET_NAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})