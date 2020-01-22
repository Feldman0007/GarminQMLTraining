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

                onWhereToClicked:
                {
                    iStackView.push(iComponentWhereTo)
                }

                onViewMapClicked:
                {
                    iStackView.push(iComponentViewMap)
                }
                onCompassClicked:
                {
                    iStackView.push(iComponentCompass)
                }
            }
        }

        Component
        {
            id: iComponentViewMap

            PageViewMap
            {
                id: iPageViewMap
            }
        }

        Component
        {
            id: iComponentWhereTo
            PageWhereTo
            {
                id: iPageWhereTo
            }
        }
        Component
        {
            id: iComponentCompass
            PageCompass
            {
                id: iPageCompass
            }
        }
    }
}
