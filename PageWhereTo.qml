import QtQuick 2.0

PageDefault {
    name: "Where to Page"

    Rectangle
    {
        id: iBackButton
        width: 15
        height: 15
        color: "grey"
        z: 100

        anchors.right: parent.right
        anchors.top: parent.top
        anchors.topMargin: 5
        anchors.rightMargin: 5

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
        anchors.top: parent.top
        height: 30

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

        GridView
        {
            id: iGridView
            anchors.top: iTitleBar.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom

            cellWidth: width / 3
            cellHeight: height / 2


            model: ListModel
            {
                ListElement {
                    name: "Address"
                    icon: "qrc:/icons/D_icon_address_nrml.png"
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

            delegate: Component{

                Item
                {
                    Rectangle
                    {
                        anchors.fill: parent
                        color: "black"
                        border.color: "grey"
                        border.width: .5
                    }

                    width: iGridView.cellWidth
                    height: iGridView.cellHeight
                    ButtonDefault
                    {
                        id: iWhereToMenuButton

                        image: model.icon
                        anchors.fill: parent
                        anchors.horizontalCenter: parent.horizontalCenter
                        onButtonClicked:
                        {
                            if (model.name === "Address"){
                                console.log("Address button pushed")
                               // iStackView.push(address page) we could be pushing a page here but don't got time
                            }
                            else if(model.name === "Home")
                            {
                                console.log("Home button pushed")
                            }
                            else if(model.name === "Points of Interest")
                            {
                                console.log("POI button pushed")
                            }
                            else if(model.name === "Recently Found")
                            {
                                console.log("Recently Found button pushed")
                            }
                            else if(model.name === "Favorites")
                            {
                                console.log("Favorites button pushed")
                            }
                            else if(model.name === "Intersections")
                            {
                                console.log("Intersections button pushed")
                            }
                        }
                    }
                    Text
                    {
                        font.bold: true
                        font.pixelSize: 20
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 5
                        anchors.horizontalCenter: parent.horizontalCenter
                        text: model.name
                        color: "white"
                    }

                }
            }


        }
}
