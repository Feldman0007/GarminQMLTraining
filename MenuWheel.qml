import QtQuick 2.13
import QtQuick.Shapes 1.14

Item {

    id: iMenuWheel

    // This handles the carousel for the menu wheel
    // Some tweaks may be required
    Shape
    {
       ShapePath
       {
          strokeWidth: 3
          strokeColor: 'black'
          fillColor: "#706c6c"
          startX: -20; startY: 100
          PathArc {
             x: 820; y: 210
             radiusX: 325; radiusY: 190
             direction: PathArc.Clockwise
          }
       }
    }
    Shape
    {
       ShapePath
       {
          strokeWidth: 3
          strokeColor: 'white'
          fillColor: "grey"
          startX: 50; startY: 250
          PathArc {
             x: 750; y: 210
             radiusX: 325; radiusY: 175
             direction: PathArc.Clockwise
          }
       }
    }
    PathView
    {
        // May not need to fill the whole parent
        anchors.fill: parent

        model: MenuWheelModel {}

        delegate: Image
        {
            source: model.icon
            ButtonDefault
            {
                anchors.fill: parent
                onButtonClicked: console.log("not yet implemented")
            }
        }

        path: Path
        {
            startX: 50; startY: 150

            PathArc
            {
                x: 750; y: 210
                radiusX: 325; radiusY: 190
            }
            PathPercent { value: 1.1}
        }

        pathItemCount: 6
    }
}
