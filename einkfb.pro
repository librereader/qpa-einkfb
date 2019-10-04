TARGET = qeinkfb

QT += \
    core-private gui-private input_support-private service_support-private \
    eventdispatcher_support-private fontdatabase_support-private \
    fb_support-private

DEFINES += QT_NO_FOREACH

SOURCES =   main.cpp \
            qeinkfbintegration.cpp \
            qeinkfbscreen.cpp
HEADERS =   qeinkfbintegration.h \
            qeinkfbscreen.h

OTHER_FILES += einkfb.json

qtConfig(freetype): QMAKE_USE_PRIVATE += freetype

PLUGIN_TYPE = platforms
PLUGIN_CLASS_NAME = QEinkFbIntegrationPlugin
!equals(TARGET, $$QT_DEFAULT_QPA_PLUGIN): PLUGIN_EXTENDS = -
load(qt_plugin)
