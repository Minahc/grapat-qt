cmake_minimum_required(VERSION 3.16)

project(Crochet_grapat_tracker VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.5 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appCrochet_grapat_tracker
    main.cpp
)

qt_add_qml_module(appCrochet_grapat_tracker
    URI Crochet_grapat_tracker
    VERSION 1.0
    QML_FILES Main.qml Page.qml
    RESOURCES Qt_logo_2016.svg
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appCrochet_grapat_tracker PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appCrochet_grapat_tracker
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appCrochet_grapat_tracker
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appCrochet_grapat_tracker
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
