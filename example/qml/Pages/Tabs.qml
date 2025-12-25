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
            width: parent.width - 24

            Row {
                spacing: 12
                CheckBox {
                    id: enabledControl
                    text: "Disabled"
                }
            }

            TabBar {
                Layout.fillWidth: true

                TabButton {
                    width: 100
                    text: "Tab 1"
                }
                TabButton {
                    width: 100
                    text: "Tab 2"
                }
            }
        }
    }
}