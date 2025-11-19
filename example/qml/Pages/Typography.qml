import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Unity

Item {

    property var textModel: [
        {value: Unity.TextStyle.VeryBig, name: "VeryBig"},
        {value: Unity.TextStyle.Big, name: "Big"},
        {value: Unity.TextStyle.Default, name: "Default"},
        {value: Unity.TextStyle.SemiSmall, name: "SemiSmall"},
        {value: Unity.TextStyle.Small, name: "Small"},
        {value: Unity.TextStyle.Tiny, name: "Tiny"}
    ]

    Flickable {
        anchors.fill: parent
        contentHeight: column.height + column.y + 12
        clip: true
        boundsBehavior: Flickable.StopAtBounds
        ScrollBar.vertical: ScrollBar{}
        Column {
            id: column
            x: 12
            y: 12
            spacing: 12
            Repeater {
                model: textModel
                Label {
                    id: label
                    text: modelData.name
                    UnityStyle.textStyle: modelData.value
                }
            }
        }
    }

}