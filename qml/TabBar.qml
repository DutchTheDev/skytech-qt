import QtQuick
import QtQuick.Controls

Button {
    property int tabIndex: 0
    property int currentTab: 0
    
    text: ""
    flat: true
    implicitHeight: 50
    implicitWidth: 100
    
    background: Rectangle {
        color: currentTab === tabIndex ? "#238636" : "transparent"
        border.bottom: currentTab === tabIndex ? 3 : 0
        border.bottomColor: "#2EA043"
    }
    
    contentItem: Text {
        text: parent.text
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 14
        font.bold: currentTab === tabIndex
        color: currentTab === tabIndex ? "#FFFFFF" : "#8B949E"
    }
}