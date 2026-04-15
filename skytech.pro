QT += core gui quick quickcontrols2 multimedia network

CONFIG += c++17

TARGET = SkytechPanel
DESTDIR = $$PWD/bin

# Manual Qt6 paths for Pop!_OS
QT_INCLUDEPATH = /usr/include/x86_64-linux-gnu/qt6
QT_LIBPATH = /usr/lib/x86_64-linux-gnu

INCLUDEPATH += $$QT_INCLUDEPATH \
    $$QT_INCLUDEPATH/QtCore \
    $$QT_INCLUDEPATH/QtGui \
    $$QT_INCLUDEPATH/QtQuick \
    $$QT_INCLUDEPATH/QtQuickControls2 \
    $$QT_INCLUDEPATH/QtMultimedia \
    $$QT_INCLUDEPATH/QtNetwork

LIBS += -L$$QT_LIBPATH \
    -lQt6Core \
    -lQt6Gui \
    -lQt6Quick \
    -lQt6QuickControls2 \
    -lQt6Multimedia \
    -lQt6Network

SOURCES += main.cpp

RESOURCES += qml.qrc

QML_IMPORT_PATH += /usr/lib/x86_64-linux-gnu/qt6/qml