import QtQuick
import QtQuick.Controls

Rectangle {
    property string name: ""
    property string zone: ""
    
    width: 200
    height: 100
    color: "#161B22"
    radius: 12
    
    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 15
        
        RowLayout {
            Text {
                text: name
                font.pixelSize: 18
                font.bold: true
                color: "#FFFFFF"
            }
            Item { Layout.fillWidth: true }
            Switch { }
        }
        
        Text {
            text: "50%"
            font.pixelSize: 24
            color: "#8B949E"
        }
    }
}