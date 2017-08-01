import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

ApplicationWindow  {
    visible: true
    width: 640
    height: 480

    flags: Qt.WA_TranslucentBackground // | Qt.FramelessWindowHint
    color: "#00000000"

    Rectangle {
        anchors.fill: parent
        border.width: 2;
        border.color: "red"
        color: "#00000000"
    }
}


