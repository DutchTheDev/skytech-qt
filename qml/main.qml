import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Window

Window {
    id: root
    width: 1024
    height: 768
    visible: true
    color: "#0D1117"
    title: "Skytech"
    
    // Fullscreen for kiosk mode
    // Uncomment for production:
    // flags: Qt.FramelessWindowHint | Qt.WindowFullscreen
    
    property int currentTab: 0
    
    ColumnLayout {
        anchors.fill: parent
        
        // Header
        Rectangle {
            Layout.fillWidth: true
            height: 60
            color: "#161B22"
            
            RowLayout {
                anchors.fill: parent
                anchors.margins: 20
                
                Text {
                    text: "Skytech"
                    font.pixelSize: 24
                    font.bold: true
                    color: "#FFFFFF"
                }
                
                Item { Layout.fillWidth: true }
                
                Text {
                    text: Qt.formatTime(new Date(), "h:mm a")
                    font.pixelSize: 20
                    color: "#8B949E"
                }
            }
        }
        
        // Tab bar
        RowLayout {
            Layout.fillWidth: true
            height: 50
            
            TabButton { text: "Home"; tabIndex: 0; currentTab: root.currentTab; onClicked: root.currentTab = 0 }
            TabButton { text: "Lights"; tabIndex: 1; currentTab: root.currentTab; onClicked: root.currentTab = 1 }
            TabButton { text: "Cameras"; tabIndex: 2; currentTab: root.currentTab; onClicked: root.currentTab = 2 }
            TabButton { text: "Climate"; tabIndex: 3; currentTab: root.currentTab; onClicked: root.currentTab = 3 }
            TabButton { text: "Music"; tabIndex: 4; currentTab: root.currentTab; onClicked: root.currentTab = 4 }
        }
        
        // Content area
        StackLayout {
            Layout.fillWidth: true
            Layout.fillHeight: true
            currentIndex: root.currentTab
            
            HomeTab { }
            LightsTab { }
            CamerasTab { }
            ClimateTab { }
            MusicTab { }
        }
    }
}