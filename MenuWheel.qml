import QtQuick 2.0

Item {

    id: iMenuWheel

    // This handles the carousel for the menu wheel
    // Some tweaks may be required
    PathView
    {
        // May not need to fill the whole parent
        anchors.fill: parent

        model: MenuWheelModel {}

        delegate: Image
        {
            source: model.name
        }

        path: Path
        {
            startX: 50; startY: 210

            PathArc
            {
                x: 750; y: 210
                radiusX: 325; radiusY: 175
            }
        }
    }

}
