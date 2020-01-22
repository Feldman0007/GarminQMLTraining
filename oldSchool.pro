QT += qml quick

CONFIG += c++11

SOURCES += main.cpp \
    main.cpp \
    main.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    resources/main_icon_compass.png \
    resources/main_icon_exitServices_left.png \
    resources/main_icon_exitServices_left_dsbld.png \
    resources/main_icon_exitServices_right.png \
    resources/main_icon_exitServices_right_dsbld.png \
    resources/main_icon_mute_dsbld.png \
    resources/main_icon_mute_nmrl.png \
    resources/main_icon_notifications.png \
    resources/main_icon_recentlyFound.png \
    resources/main_icon_repeat_prompt_dsbld.png \
    resources/main_icon_repeat_prompt_nrml.png \
    resources/main_icon_routes.png \
    resources/main_icon_settings.png \
    resources/main_icon_stop_dsbld.png \
    resources/main_icon_stop_nrml.png \
    resources/main_icon_traffic.png \
    resources/map_icon_browse_dsbld.png \
    resources/map_icon_browse_poi.png \
    resources/map_icon_browse_poi2.png \
    resources/map_icon_browse_poi2_dslbd.png \
    resources/map_icon_browse_poi_nrml.png \
    resources/ViewMap_hghlt.png \
    resources/ViewMap_nrml.png \
    resources/ViewMap_prsd.png \
    resources/WhereTo_hghlt.png \
    resources/WhereTo_nrml.png \
    resources/WhereTo_prsd.png \
    icons/main_icon_compass.png \
    icons/main_icon_exitServices_left.png \
    icons/main_icon_exitServices_left_dsbld.png \
    icons/main_icon_exitServices_right.png \
    icons/main_icon_exitServices_right_dsbld.png \
    icons/main_icon_mute_dsbld.png \
    icons/main_icon_mute_nmrl.png \
    icons/main_icon_notifications.png \
    icons/main_icon_recentlyFound.png \
    icons/main_icon_repeat_prompt_dsbld.png \
    icons/main_icon_repeat_prompt_nrml.png \
    icons/main_icon_routes.png \
    icons/main_icon_settings.png \
    icons/main_icon_stop_dsbld.png \
    icons/main_icon_stop_nrml.png \
    icons/main_icon_traffic.png \
    icons/map_icon_browse_dsbld.png \
    icons/map_icon_browse_poi.png \
    icons/map_icon_browse_poi2.png \
    icons/map_icon_browse_poi2_dslbd.png \
    icons/map_icon_browse_poi_nrml.png \
    icons/ViewMap_hghlt.png \
    icons/ViewMap_nrml.png \
    icons/ViewMap_prsd.png \
    icons/WhereTo_hghlt.png \
    icons/WhereTo_nrml.png \
    icons/WhereTo_prsd.png
