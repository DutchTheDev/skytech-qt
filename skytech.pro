CONFIG += c++17

TARGET = SkytechPanel
DESTDIR = $$PWD/bin

# Use plain Qt without module detection
QT -= gui quick quickcontrols2

CONFIG += link_pkgconfig
PKGCONFIG += Qt6Core Qt6Gui Qt6Quick Qt6QuickControls2 Qt6Multimedia Qt6Network

INCLUDEPATH += /usr/include/x86_64-linux-gnu/qt6 \
    /usr/include/x86_64-linux-gnu/qt6/QtCore \
    /usr/include/x86_64-linux-gnu/qt6/QtGui \
    /usr/include/x86_64-linux-gnu/qt6/QtQuick \
    /usr/include/x86_64-linux-gnu/qt6/QtQuickControls2 \
    /usr/include/x86_64-linux-gnu/qt6/QtMultimedia \
    /usr/include/x86_64-linux-gnu/qt6/QtNetwork

SOURCES += main.cpp
RESOURCES += qml.qrc