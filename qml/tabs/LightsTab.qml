import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 20
        spacing: 20
        
        Text {
            text: "Lights"
            font.pixelSize: 28
            font.bold: true
            color: "#FFFFFF"
        }
        
        // Light list - populated from Lutron
        GridLayout {
            columns: 2
            rowSpacing: 15
            columnSpacing: 15
            Layout.fillWidth: true
            
            LightCard { name: "Living Room"; zone: "1" }
            LightCard { name: "Kitchen"; zone: "2" }
            LightCard { name: "Bedroom"; zone: "3" }
            LightCard { name: "Garage"; zone: "4" }
        }
        
        Item { Layout.fillHeight: true }
    }
}

Component {
    id: lightCard
    Rectangle {
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
}