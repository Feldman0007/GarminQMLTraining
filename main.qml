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

        initialItem: iComponentMainMenu
        visible: true

        Component
        {
            id: iComponentMainMenu
            PageMainMenu
            {
                id: iPageMainMenu
                anchors.fill: parent

                onWhereToClicked:
                {
                    console.log("Where to button was pressed")
                    iStackView.push(iComponentWhereTo)
                    stackView: iStackView
                }

                onViewMapClicked:
                {
                    console.log("View Map button was pressed")
                    iStackView.push(iComponentViewMap)
                }
            }
        }

        Component
        {
            id: iComponentViewMap

            PageViewMap
            {
                id: iPageViewMap
                anchors.fill: parent
            }
        }

        Component
        {
            id: iComponentWhereTo
            PageWhereTo
            {
                id: iPageWhereTo
                anchors.fill: parent
            }
        }
//                        iStackView.push( "qrc:/PageMainMenu.qml",

    }
}
