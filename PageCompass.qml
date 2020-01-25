import QtQuick 2.0

iPageDefault
{
    name: "Compass Page"

    Rectangle
    {
        id: iBackButton
        width: 40
        height: 30
        color: "grey"
        z: 100

        anchors.top: parent.top
        anchors.right: parent.right
        anchors.topMargin: parent.height / 2
        anchors.rightMargin: 15

        Text
        {
           anchors.centerIn: parent
           text: "Back"
           color: "black"
        }

        MouseArea
        {
            anchors.fill: parent
            onClicked: iStackView.pop()
        }
    }
    ListModel
    {
        id: iCompassInfoSectionsModel
        ListElement
        {
            name: "Where Am I"
        }
        ListElement
        {
            name: "Nearest Address"
        }
        ListElement
        {
            name: "Nearest Intersection"
        }
    }
//    ListView
//    {
//        id: iCompassInfoSectionLayout

//        anchors.left: parent.left
//        anchors.top: parent.top
//        anchors.bottom: parent.bottom
//        anchors.right: parent.right / 2

//        model: iCompassInfoSectionsModel
//        delegate: Component
//        {
//            CompassInfoSection
//            {
//                titleTextField: model.name
//                if (model.name === "Where Am I")
//                {
//                    infoTextField: "N 33° 19.770'\nW 111° 56.768'\nElevation: 1137 ft"
//                }
//                else if (){}
//                else{}
//            }
//        }

//    }
}
//    ListView
//    {
//        id: iCompassInfoSections
//        color: transparent
//        width
//    }


//    Component
//    {
//        id: iDefaultCompassInfoSection
//        Rectangle
//        {
//            id: iTitleBar
//            anchors.top: parent.top
//            anchors.left: parent.left
//            anchors.right: parent.right
//            height: 30
//            Text
//            {
//                id: iTitleText
//                text: name
//                color: "white"
//                font.pixelSize: 15
//                anchors.left: parent.left
//                anchors.leftMargin: 5
//                anchors.top: parent.top
//                anchors.topMargin: 5
//                anchors.bottom: parent.bottom
//                anchors.bottomMargin: 5
//            }
//        }
//    }



//    ListView
//    {
//        id: iCompassInfo
//        orientation: ListView.Vertical
//        model: iCompassInfoSection
//        delegate: {
//            if (model.name === "Where Am I") {
//                return Component {
//                    Rectangle{
//                        id: titleBar
//                    }

//                }
//            }
//        }
//    }
