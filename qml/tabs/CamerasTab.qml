import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 20
        spacing: 20
        
        Text {
            text: "Cameras"
            font.pixelSize: 28
            font.bold: true
            color: "#FFFFFF"
        }
        
        Text {
            text: "Connect Unifi Protect to view camera streams"
            font.pixelSize: 14
            color: "#8B949E"
        }
        
        Item { Layout.fillHeight: true }
    }
}