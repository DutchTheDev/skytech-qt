CXX = g++
CXXFLAGS = -std=c++17 -fPIC -I/usr/include/x86_64-linux-gnu/qt6 -I/usr/include/x86_64-linux-gnu/qt6/QtCore -I/usr/include/x86_64-linux-gnu/qt6/QtGui -I/usr/include/x86_64-linux-gnu/qt6/QtQuick -I/usr/include/x86_64-linux-gnu/qt6/QtQuickControls2 -I/usr/include/x86_64-linux-gnu/qt6/QtMultimedia -I/usr/include/x86_64-linux-gnu/qt6/QtQml -I/usr/include/x86_64-linux-gnu/qt6/QtQuickTemplates2 -DQT_QML_DEBUG
LIBS = -L/usr/lib/x86_64-linux-gnu -lQt6Core -lQt6Gui -lQt6Quick -lQt6QuickControls2 -lQt6Multimedia -lQt6Network -lQt6Qml -lQt6QuickTemplates2
TARGET = bin/SkytechPanel

all:
	mkdir -p bin
	$(CXX) $(CXXFLAGS) main.cpp -o $(TARGET) $(LIBS)

run: all
	./$(TARGET)

clean:
	rm -rf bin