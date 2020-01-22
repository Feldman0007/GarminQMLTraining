import QtQuick 2.0
import QtQuick.Shapes 1.0

PageDefault {
    id: iPageViewMap
    name: "View Map Page"

    property string state: "DISABLE_MENU_WHEEL"

    function toggleMenuWheel()
    {
        iLoadDisabledWheelView.active = iLoadDisabledWheelView.active === true ? false : true
        iLoadEnabledMenuWheel.active = iLoadEnabledMenuWheel.active === true ? false : true
    }

    Image
    {
        anchors.fill: parent
        source: "icons/viewMap.png"
    }
    Component
    {
        id: iEnabledWheelView
        MenuWheel
        {
            id: iVisibleMenuWheel
            x: 0
            y: 800
            //onCompassClickDetected: compassClicked()
            Component.onCompleted:
            {
                iPageViewMap.state =  "ENABLE_MENU_WHEEL"
                console.log(iPageViewMap.state)
            }

        }
    }
    Component
    {
        id: iDisabledWheelView
        Item{
            opacity: .5
            Shape
            {
               ShapePath
               {
                  strokeWidth: 3
                  strokeColor: 'white'
                  fillColor: "grey"
                  startX: 70; startY: 600
                  PathArc {
                     x: 625; y: 500
                     radiusX: 325; radiusY: 175
                     direction: PathArc.Clockwise
                  }
               }
            }
            Component.onCompleted:
            {
                iPageViewMap.state = "DISABLE_MENU_WHEEL"
                console.log(iPageViewMap.state)
            }
        }
    }

    Loader
    {
        id: iLoadDisabledWheelView
        active: true
        sourceComponent: iDisabledWheelView
    }
    Loader
    {
        id: iLoadEnabledMenuWheel
        active: false
        sourceComponent: iEnabledWheelView
    }

    Rectangle
    {
        id: iBackButton
        width: 15
        height: 15
        color: "grey"
        z: 100

        anchors.top: parent.top
        anchors.right: parent.right
        anchors.topMargin: parent.height / 2
        anchors.rightMargin: 15

        MouseArea
        {
            anchors.fill: parent
            onClicked: iStackView.pop()
        }
    }
    Rectangle
    {
        id: iToggleMouseWheel
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
    states: [
        State
        {
            name: "DISABLE_MENU_WHEEL"
            PropertyChanges
            {
                target: iVisibleMenuWheel
                y: 800
            }
        },
        State {
            name: "ENABLE_MENU_WHEEL"
            PropertyChanges
            {
                target: iVisibleMenuWheel
                y: 400
            }
        }
    ]
//    transitions: [
//        Transition {
//            from: "DISABLE_MENU_WHEEL"
//            to: "ENABLE_MENU_WHEEL"
//            PropertyAnimation {
//                id: doodle
//                target: iVisibleMenuWheel
//                property: y
//                duration: 1000
//            }
//        }
//    ]
}
