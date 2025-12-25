import QtQuick
import QtQuick.Templates as T
import QtQuick.Controls.impl

T.TabButton {
    id: control

    implicitWidth: Math.max(implicitBackgroundWidth + leftInset + rightInset,
                            implicitContentWidth + leftPadding + rightPadding)
    implicitHeight: 20

    padding: 12
    spacing: 6

    icon.width: 24
    icon.height: 24

    contentItem: Item {
         implicitWidth: iconItem.visible ? label.implicitWidth + internal.iconSize + control.spacing : label.implicitWidth
         implicitHeight: internal.height
         UnityIcon {
             id: iconItem
             image.source: control.icon.source
             //image.name: control.icon.name
             color: label.color
             anchors.verticalCenter: parent.verticalCenter
             anchors.horizontalCenter: internal.onlyIcon ? parent.horizontalCenter : undefined
             visible: icon.source != "" || icon.name != ""
             size: internal.iconSize
         }
         Label {
             id: label
             text: control.text
             anchors.fill: parent
             anchors.leftMargin: iconItem.visible ? internal.iconSize + control.spacing : 0
             horizontalAlignment: Text.AlignHCenter
             verticalAlignment: Text.AlignVCenter
             color: UnityTheme.palette.tabText
         }
     }

    background: Item {
        implicitHeight: 20
        clip: true
        Rectangle {
            radius: 3
            height: 23
            width: parent.width
            color: UnityTheme.palette.tabHighlightBackground
            visible: control.checked
        }
        Rectangle {
            radius: 3
            height: 23
            width: parent.width
            y: control.checked ? 2 : 0
            clip: true
            color: {
                if(control.checked) return UnityTheme.palette.tabBackgroundChecked
                if(control.pressed) return UnityTheme.palette.tabBackground
                if(control.hovered) return UnityTheme.palette.tabBackgroundHover
                return UnityTheme.palette.defaultBackground
            }

            Rectangle {
                width: 1
                height: parent.height
                y: 3
                anchors.right: parent.right
                color: UnityTheme.palette.defaultBorder
                visible: control.checked
            }
        }
    }
}