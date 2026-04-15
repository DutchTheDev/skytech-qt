import QtQuick
import QtQuick.Controls

Rectangle {
    width: 150
    height: 100
    color: "#161B22"
    radius: 12
    
    ColumnLayout {
        anchors.centerIn: parent
        
        Text {
            text: parent.Parent.title
            font.pixelSize: 14
            color: "#8B949E"
        }
        
        Text {
            text: parent.Parent.value
            font.pixelSize: 28
            font.bold: true
            color: "#FFFFFF"
        }
    }
}