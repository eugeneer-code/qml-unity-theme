import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Unity

Item {
    id: page

    Flickable {
        anchors.fill: parent
        contentHeight: column.height + 24
        clip: true
        boundsBehavior: Flickable.StopAtBounds
        ScrollBar.vertical: ScrollBar{}

        ColumnLayout{
            id: column
            x: 12
            y: 12
            spacing: 12

            Row {
                spacing: 12
                CheckBox {
                    id: enabledControl
                    text: "Disabled"
                }
            }

            TabBar {
                width: 500

                TabButton {
                    text: "Tab 1"
                }
                TabButton {
                    text: "Tab 2"
                }
            }
        }
    }
}