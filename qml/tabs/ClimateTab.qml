import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 20
        spacing: 20
        
        Text {
            text: "Climate"
            font.pixelSize: 28
            font.bold: true
            color: "#FFFFFF"
        }
        
        // Thermostat card
        Rectangle {
            width: 300
            height: 200
            color: "#161B22"
            radius: 16
            
            ColumnLayout {
                anchors.centerIn: parent
                spacing: 10
                
                Text {
                    text: "Current"
                    font.pixelSize: 14
                    color: "#8B949E"
                }
                
                Text {
                    text: "72°F"
                    font.pixelSize: 48
                    font.bold: true
                    color: "#FFFFFF"
                }
                
                Text {
                    text: "Heating to 70°F"
                    font.pixelSize: 14
                    color: "#8B949E"
                }
            }
        }
        
        // Temperature presets
        RowLayout {
            TempButton { label: "66°F"; value: 66 }
            TempButton { label: "68°F"; value: 68 }
            TempButton { label: "70°F"; value: 70 }
            TempButton { label: "72°F"; value: 72 }
            TempButton { label: "74°F"; value: 74 }
        }
        
        Item { Layout.fillHeight: true }
    }
}

Component {
    id: tempButton
    Button {
        width: 80
        height: 50
        text: label
        background: Rectangle {
            color: "#21262D"
            radius: 8
        }
        contentItem: Text {
            text: parent.text
            color: "#FFFFFF"
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }
}