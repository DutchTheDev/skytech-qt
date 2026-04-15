import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 20
        spacing: 20
        
        // Welcome message
        Text {
            text: "Welcome Home"
            font.pixelSize: 32
            font.bold: true
            color: "#FFFFFF"
        }
        
        // Quick stats row
        RowLayout {
            Layout.fillWidth: true
            
            StatCard { title: "Lights On"; value: "3" }
            StatCard { title: "Temperature"; value: "72°F" }
            StatCard { title: "Music"; value: "Playing" }
            StatCard { title: "Cameras"; value: "4 Active" }
        }
        
        // Scene buttons
        Text {
            text: "Scenes"
            font.pixelSize: 20
            font.bold: true
            color: "#FFFFFF"
        }
        
        RowLayout {
            Layout.fillWidth: true
            
            SceneButton { text: "Morning" }
            SceneButton { text: "Away" }
            SceneButton { text: "Movie" }
            SceneButton { text: "Night" }
        }
        
        Item { Layout.fillHeight: true }
    }
}

// Stat card component
Component {
    id: statCard
    Rectangle {
        width: 150
        height: 100
        color: "#161B22"
        radius: 12
        
        ColumnLayout {
            anchors.centerIn: parent
            
            Text {
                text: title
                font.pixelSize: 14
                color: "#8B949E"
            }
            
            Text {
                text: value
                font.pixelSize: 28
                font.bold: true
                color: "#FFFFFF"
            }
        }
    }
}

Component {
    id: sceneButton
    Button {
        width: 120
        height: 60
        text: ""
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