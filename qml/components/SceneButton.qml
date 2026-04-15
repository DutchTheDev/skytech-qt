import QtQuick
import QtQuick.Controls

Button {
    width: 120
    height: 60
    flat: true
    
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