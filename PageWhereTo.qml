import QtQuick 2.0

PageDefault {
    property var stackView: null
    name: "Where to Page"

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

    Rectangle
    {
        id: iTitleBar
        color: "black"
        width: parent.width
        height: 30
        anchors.top: parent.top

        Text
        {
            color: "#b0a6a6"
            text: "Where To?"
            font.bold: true
            font.pointSize: 12
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
        }
    }
    Rectangle
    {
        id: iGridBounds
        anchors
        {
            top: iTitleBar.bottom
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }

        GridView
        {
            id: iGridView
            anchors.fill: parent
            cellWidth: parent.width / 3
            cellHeight: parent.height / 3

            model: ListModel
            {
                id: iGridViewModel

                ListElement {
                    name: "Address"
                    icon: "icons/D_icon_address_nrml.png"
                }
                ListElement {
                    name: "Home"
                    icon: "icons/D_icon_home_nrml.png"
                }
                ListElement {
                    name: "Points of Interest"
                    icon: "icons/D_icon_poi_nrml.png"
                }
                ListElement {
                    name: "Recently Found"
                    icon: "icons/D_icon_recentlyfnd_nrml.png"
                }
                ListElement {
                    name: "Favorites"
                    icon: "icons/D_icon_favorites_nrml.png"
                }
                ListElement {
                    name: "Intersections"
                    icon: "icons/D_icon_intrsctns_nrml.png"
                }
            }

            delegate: Rectangle {
                height: iGridView.cellHeight
                width: iGridView.cellWidth
                color: "black"

                Text
                {

                }


            }
        }
    }
}
