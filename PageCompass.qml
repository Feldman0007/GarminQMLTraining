import QtQuick 2.0

PageDefault {
    name: "Compass Page"

    Rectangle
    {
        id: iBackButton
        width: 100
        height: 100
        color: "green"

        MouseArea
        {
            anchors.fill: parent
            onClicked: iStackView.pop()
        }
    }
}
