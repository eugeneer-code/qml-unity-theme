import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Unity

Item {
    id: page
    property var sizeModel: [Unity.ControlSize.Mini, Unity.ControlSize.Regular, Unity.ControlSize.Large]

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
                CheckBox {
                    id: iconControl
                    text: "icon"
                }
                CheckBox {
                    id: onlyIconControl
                    text: "onlyIcon"
                }
            }

            Repeater {
                model: sizeModel
                Button {
                    text: onlyIconControl.checked ? "" : "Button"
                    UnityStyle.controlSize: modelData
                    enabled: !enabledControl.checked
                    icon.source: iconControl.checked ? "qrc:/icons/centered.svg" : ""
                }
            }
        }
    }
}