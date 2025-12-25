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

            TextField{
                enabled: !enabledControl.checked
            }

            ComboBox {
                model: ["Item 1", "Item 2", "Item 3"]
                enabled: !enabledControl.checked
            }

            UnityColorInput {
                text: "#45CAb9"
                onColorSelected: (selectedColor) => {
                    console.log("Color selected: " + selectedColor)
                }
            }
            UnityColorInput {
                text: "custom text"
                useTextBindings: false
                colorValue: "#4590AB"
                onColorSelected: (selectedColor) => {
                    text = selectedColor
                    console.log("Color selected: " + selectedColor)
                }
                onTextChanged: {
                    var col = Qt.color(text)
                    if(col.valid) colorValue = col
                }
            }
        }
    }
}