import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 20
        spacing: 20
        
        Text {
            text: "Music"
            font.pixelSize: 28
            font.bold: true
            color: "#FFFFFF"
        }
        
        // Now playing card
        Rectangle {
            width: 400
            height: 150
            color: "#161B22"
            radius: 16
            
            RowLayout {
                anchors.fill: parent
                anchors.margins: 20
                
                // Album art placeholder
                Rectangle {
                    width: 110
                    height: 110
                    color: "#21262D"
                    radius: 8
                }
                
                ColumnLayout {
                    Layout.fillWidth: true
                    
                    Text {
                        text: "No Track Playing"
                        font.pixelSize: 20
                        font.bold: true
                        color: "#FFFFFF"
                    }
                    
                    Text {
                        text: "Sonos"
                        font.pixelSize: 16
                        color: "#8B949E"
                    }
                    
                    Text {
                        text: "--:-- / --:--"
                        font.pixelSize: 14
                        color: "#8B949E"
                    }
                }
            }
        }
        
        // Playback controls
        RowLayout {
            Layout.horizontalCenter: true
            spacing: 30
            
            Button {
                text: "⏮"
                width: 60
                height: 60
                flat: true
                contentItem: Text {
                    text: parent.text
                    font.pixelSize: 24
                    color: "#FFFFFF"
                }
            }
            
            Button {
                text: "▶"
                width: 80
                height: 80
                flat: true
                background: Rectangle {
                    color: "#238636"
                    radius: 40
                }
                contentItem: Text {
                    text: parent.text
                    font.pixelSize: 32
                    color: "#FFFFFF"
                }
            }
            
            Button {
                text: "⏭"
                width: 60
                height: 60
                flat: true
                contentItem: Text {
                    text: parent.text
                    font.pixelSize: 24
                    color: "#FFFFFF"
                }
            }
        }
        
        // Volume slider
        RowLayout {
            Layout.horizontalCenter: true
            width: 300
            
            Text { text: "🔊"; font.pixelSize: 16; color: "#8B949E" }
            Slider { Layout.fillWidth: true; value: 70 }
            Text { text: "100%"; font.pixelSize: 14; color: "#8B949E" }
        }
        
        Item { Layout.fillHeight: true }
    }
}