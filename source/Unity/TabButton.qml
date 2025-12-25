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
        UnityIconLabel {
            anchors.centerIn: parent
            iconSource: control.icon.source
            text: control.text
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