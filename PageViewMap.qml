import QtQuick 2.0

PageDefault {
    property var stackView: null
    name: "View Map Page"

    Image
    {
        anchors.fill: parent
        source: "icons/viewMap.png"
    }

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
