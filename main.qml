import QtQuick 2.7
import QtQuick.Window 2.7

Window {
   id: mainWindow
   flags: Qt.FramelessWindowHint | Qt.WindowStaysOnTopHint

   width: 250
   height: 250
   visible: true
   color: "transparent"

   Rectangle {
        id: root
        anchors.fill: parent


        color: "#66000099"

        border.color: "black"
        border.width: 1

        MouseArea {
            id: dragArea
            anchors.fill: parent

            property variant clickPos: "1,1"

            onPressed: {
                clickPos  = Qt.point(mouse.x,mouse.y)
            }

            onPositionChanged: {
                var delta = Qt.point(mouse.x-clickPos.x, mouse.y-clickPos.y)
                mainWindow.x += delta.x;
                mainWindow.y += delta.y;
            }
        }

    }
}


