import QtQuick 2.9

Item
{
    id: iGenericButton
    property string image: ""
    signal buttonClicked()
    signal buttonPressed()
    signal buttonReleased()

    Image
    {
        id: iButtonImage
        anchors.fill: parent
        source: image
    }

    MouseArea
    {
        id: iButtonArea
        anchors.fill: parent
        onClicked:{iGenericButton.buttonClicked()}
        onPressed:{iGenericButton.buttonPressed()}
        onReleased:{iGenericButton.buttonReleased()}
    }
}
