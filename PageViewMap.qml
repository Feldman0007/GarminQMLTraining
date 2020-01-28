import QtQuick 2.0
import QtQuick.Shapes 1.0

Item
{
    id: iPageViewMap
    //name: "View Map Page"
    anchors.fill: parent
    state: "DISABLE_MENU_WHEEL"

    function toggleMenuWheel()
    {
        state = state === "DISABLE_MENU_WHEEL" ? "ENABLE_MENU_WHEEL" : "DISABLE_MENU_WHEEL"
    }

    Image
    {
        anchors.fill: parent
        source: "icons/viewMap.png"
    }

    MenuWheel
    {
        id: iMenuWheel
        x: 0
        y: 800
    }
    Item
    {
        id: iDisabledWheel
        opacity: .5
        property alias yArc : iArc.y
        property alias yStart : iPath.startY
        Shape
        {
           ShapePath
           {
               id: iPath
              strokeWidth: 3
              strokeColor: 'white'
              fillColor: "grey"
              startX: 160; startY: 500
              PathArc {
                 id: iArc
                 x: 625; y: 500
                 radiusX: 325; radiusY: 200
                 direction: PathArc.Clockwise
              }
           }
        }
    }

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
    Rectangle
    {
        id: iToggleMouseWheelVisibility
        width: 15
        height: 15
        color: "gainsboro"
        z: 100

        anchors.bottom: parent.bottom
        anchors.right: parent.right
        anchors.rightMargin: parent.width / 2

        MouseArea
        {
            anchors.fill: parent
            onClicked:
            {
                toggleMenuWheel()
            }
        }
    }

    Item
    {
        id: iNavigationAddressBar
        height: 40
        width: iPageViewMap.width
        Rectangle
        {
            id: iTopColor
            anchors.top: parent.top
            height: parent.height / 2
            width: parent.width
            color: "green"
        }
        Rectangle
        {
            anchors.top: iTopColor.bottom
            height: parent.height / 2
            width: parent.width
            color: "darkgreen"
        }
        Text
        {
            id: iNavigationAddress
            anchors.centerIn: parent
            anchors.leftMargin: 15
            text: "I-35 N/US-169 N/US-50/US-1.."
            font.pixelSize: 30
            color: white
            antialiasing: true
        }
    }

    Rectangle
    {
        id: iArrival
//        anchors.bottom: parent.bottom
//        anchors.left: parent.left
        y: 430
        x: 0
        width : 100
        height : 50
        radius: 10
        gradient : Gradient
        {
            GradientStop { position: 0.0; color: "white" }
            GradientStop { position: 1.0; color: "black" }
        }
        Text
        {
            id: iTextArrivalTime
            anchors.centerIn: parent
            text: "12:45"
            color: "black"
            font.bold: true
            font.pixelSize: 18
        }
        Text
        {
            anchors.bottom: iTextArrivalTime.top
            anchors.horizontalCenter: iTextArrivalTime.horizontalCenter
            text: "Arrival"
            color: "green"
            font.pixelSize: 11
        }
        Text
        {
            anchors.left: iTextArrivalTime.right
            anchors.leftMargin: 2
            anchors.bottom: iTextArrivalTime.bottom
            text: "pm"
            color: "green"
            font.pixelSize: 11
        }

    }
    Rectangle
    {
        id: iSpeed
        y: 430
        x: 700
        width : 100
        height : 50
        radius: 10
        gradient : Gradient
        {
            GradientStop { position: 0.0; color: "white" }
            GradientStop { position: 1.0; color: "black" }
        }
        Text
        {
            id: iMPH
            anchors.centerIn: parent
            text: "65 mph"
            color: "black"
            font.bold: true
            font.pixelSize: 12
        }
    }


    states: [
        State
        {
            name: "DISABLE_MENU_WHEEL"
            PropertyChanges
            {
               target: iMenuWheel
               y: 800
            }
            PropertyChanges
            {
                target: iDisabledWheel
                yArc : 500
                yStart : 500
            }
            PropertyChanges
            {
                target: iSpeed
                x: 700
            }
            PropertyChanges
            {
                target: iArrival
                x: 0
            }
            PropertyChanges
            {
                target: iNavigationAddressBar
                y: 0
            }

        },
        State {
            name: "ENABLE_MENU_WHEEL"
            PropertyChanges
            {
                target: iMenuWheel
                y: 400
            }
            PropertyChanges
            {
                target: iDisabledWheel
                yArc : 600
                yStart : 600
            }
            PropertyChanges
            {
                target: iSpeed
                x: 800
            }
            PropertyChanges
            {
                target: iArrival
                x: -100
            }
            PropertyChanges
            {
                target: iNavigationAddressBar
                y: -40
            }
        }
    ]
    transitions: [
        Transition
        {
            from: "DISABLE_MENU_WHEEL"
            to: "ENABLE_MENU_WHEEL"
            SequentialAnimation
            {
                ParallelAnimation
                {
                    PropertyAnimation
                    {
                        target: iSpeed
                        properties: "x"
                        duration: 250
                    }
                    PropertyAnimation
                    {
                        target: iArrival
                        properties: "x"
                        duration: 250
                    }
                    PropertyAnimation
                    {
                        target: iNavigationAddressBar
                        properties: "y"
                        duration: 250
                    }
                    PropertyAnimation
                    {
                        target: iDisabledWheel
                        properties: "yArc, yStart"
                        duration: 250
                    }
                }

                PropertyAnimation
                {
                    target: iMenuWheel
                    properties: "y"
                    duration: 250
                }
            }
        },
        Transition
        {
            from: "ENABLE_MENU_WHEEL"
            to: "DISABLE_MENU_WHEEL"
            SequentialAnimation
            {
                ParallelAnimation
                {
                    PropertyAnimation
                    {
                        target: iSpeed
                        properties: "x"
                        duration: 250
                    }
                    PropertyAnimation
                    {
                        target: iArrival
                        properties: "x"
                        duration: 250
                    }
                    PropertyAnimation
                    {
                        target: iNavigationAddressBar
                        properties: "y"
                        duration: 250
                    }
                    PropertyAnimation
                    {
                      target: iMenuWheel
                      properties: "y"
                      duration: 250
                    }
                }

                PropertyAnimation
                {
                    target: iDisabledWheel
                    properties: "yArc, yStart"
                    duration: 250
                }
            }
        }
    ]

}
