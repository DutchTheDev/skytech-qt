QT += core gui quick multimedia network

CONFIG += c++17

TARGET = SkytechPanel
DESTDIR = $$PWD/bin

SOURCES += \
    main.cpp \
    mainwindow.cpp \
    tabs/hometab.cpp \
    tabs/lightstab.cpp \
    tabs/camerastab.cpp \
    tabs/climatetab.cpp \
    tabs/musictab.cpp \
    api/lutronclient.cpp

HEADERS += \
    mainwindow.h \
    tabs/hometab.h \
    tabs/lightstab.h \
    tabs/camerastab.h \
    tabs/climatetab.h \
    tabs/musictab.h \
    api/lutronclient.h

RESOURCES += qml.qrc

QML_IMPORT_PATH += $$PWD/qml