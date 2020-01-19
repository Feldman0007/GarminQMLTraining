import QtQuick 2.9

PageDefault
{
    property var stackView: null

    signal whereToClicked()
    signal viewMapClicked()
    //signal handlers for corousel wheel

    //--------------------------------------------------
    // Inheritied Properties
    //--------------------------------------------------

    // This property comes from Page default
    name: "Main Menu"

    //-------------------------------------------------
    // Children
    //-------------------------------------------------
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

//        Rectangle
//        {
//            id: iRect
//            height: 100
//            width: 100

//            color: "green"

//            MouseArea
//            {
//                anchors.fill: parent

//                onClicked:
//                {
//                    // This how you remove this from stack view
//                    iStackView.pop();
//                }
//            }
//        }

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

//            function executeWhereTo () {

//            }

            Text
            {
                y: 148
                color: "#ffffff"
                text: "Where to?"
                font.pointSize: 22
                anchors.horizontalCenterOffset: 1
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.centerIn: parent.horizontalCenter
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

            Text
            {
                y: 148
                color: "#ffffff"
                text:"View Map"
                font.pointSize: 21
                anchors.horizontalCenterOffset: 1
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.centerIn: parent.horizontalCenter
            }
        }

        MenuWheel
        {
            anchors.top: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
        }
    }
}
