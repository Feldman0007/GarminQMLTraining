import QtQuick 2.9

Item
{
    signal whereToClicked()
    signal viewMapClicked()
    signal compassClicked()

    //name: "Main Menu"
    anchors.fill: parent

    Rectangle
    {
        anchors.fill: parent
        id: iBackground
        gradient: Gradient {
            GradientStop {
                position: 1.00
                color: "#ffffff"
            }

            GradientStop {
                position: 0
                color: "#000000"
            }
        }

        ButtonDefault
        {

            id: iWhereToButton
            width: 282
            height: 197
            anchors.top: parent.top
            anchors.topMargin: 20
            anchors.left: parent.left
            anchors.leftMargin: 20
            image: "icons/WhereTo_nrml.png"

            onButtonClicked: whereToClicked()

            onButtonPressed:
            {
                image: "icons/WhereTo_prsd.png"
            }

            onButtonReleased:
            {
                image: "icons/WhereTo_nrml.png"
            }

            Text
            {
                y: 148
                color: "#ffffff"
                text: "Where to?"
                font.pointSize: 22
                anchors.horizontalCenterOffset: 1
                anchors.horizontalCenter: parent.horizontalCenter
            }

        }

        ButtonDefault
        {
            id: iViewMapButton
            x: 351
            width: 240
            height: 194
            anchors.right: parent.right
            anchors.rightMargin: 29
            anchors.top: parent.top
            anchors.topMargin: 20
            image: "icons/ViewMap_nrml.png"

            onButtonClicked: viewMapClicked()
//            onButtonPressed:
//            {
//                image: "icons/ViewMap_prsd.png"
//            }
//            onButtonReleased:
//            {
//                //image: "icons/ViewMap_nrml.png"
//            }

            Text
            {
                y: 148
                color: "#ffffff"
                text:"View Map"
                font.pointSize: 21
                anchors.horizontalCenterOffset: 1
                anchors.horizontalCenter: parent.horizontalCenter
                //anchors.centerIn: parent.horizontalCenter
            }
        }

        MenuWheel
        {
            id: iMenuWheel
            anchors.top: parent.bottom
            anchors.topMargin: -100
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            onCompassClickDetected: compassClicked()
        }
    }
}
