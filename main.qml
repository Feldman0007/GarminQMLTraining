import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

ApplicationWindow {
    id: root
    visible: true
    width: 800
    height: 480
    title: qsTr("NTG5E")


    StackView
    {
        id: iStackView

        anchors.fill: parent

        initialItem: iPageMainMenu

        PageMainMenu
        {
            id: iPageMainMenu
            anchors.fill: parent

            onWhereToClicked: {
                console.log("Where to button was pressed")
                iStackView.push(iPageWhereTo)
            }
            onViewMapClicked: {
                console.log("View Map button was pressed")
                iStackView.push(iPageViewMap)
            }
        }
        PageViewMap
        {
            id: iPageViewMap
            anchors.fill: parent
        }
        PageWhereTo
        {
            id: iPageWhereTo
            anchors.fill: parent
        }



        // iComponent should be replaced by PageMainMenu
//        initialItem: iComponent

//        Component
//        {
//            id: iComponent
//            Rectangle
//            {
//                id: iRect
//                height: 100
//                width: 100

//                color: "red"

//                MouseArea
//                {
//                    anchors.fill: parent

//                    onClicked:
//                    {
//                        // this is how to push pages/items on this stack
//                        // QRL for the qml is given, properties of the qml
//                        // page are then passed in
//                        iStackView.push( "qrc:/PageMainMenu.qml",
//                                    {
//                                        stackView: iStackView
//                                    }
//                                    );
//                    }
//                }
//            }
//        }
    }
}
