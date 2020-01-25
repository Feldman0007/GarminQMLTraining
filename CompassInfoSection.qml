import QtQuick 2.0

Rectangle
{
    id: iBackground
    anchors.fill: parent
    color: "black"
    property alias infoTextField: iInfoText.text
    property alias titleTextField: iTitleText.text

    Rectangle
    {
        id: iTitleBar
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        height: 30
        border.color: "black"
        border.width: 1
        radius: 2
        gradient: Gradient{
            GradientStop {position: 0.0; color: "white"}
            GradientStop {position: 0.10; color: "#1a2936"}
        }

        Text
        {
            id: iTitleText
            text: "Where Am I?"
            color: "white"
            font.bold: true
            font.pixelSize: 16
            anchors.left: parent.left
            anchors.leftMargin: 5
            anchors.top: parent.top
            anchors.topMargin: 5
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 5
        }
    }

    Text
    {
        id: iInfoText
        anchors.top: iTitleBar.bottom
        anchors.left: parent.left
        anchors.leftMargin: 5
        text: ""
        color: "white"
        font.pixelSize: 14
    }
}
