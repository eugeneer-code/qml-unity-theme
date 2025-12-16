import QtQuick
import QtQuick.Templates as T
import QtQuick.Controls.impl
import QtQuick.Controls.Material
import QtQuick.Controls.Material.impl

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
         }
     }

    background: Rectangle {
        implicitHeight: 20
        clip: true
        color: {
            if(control.pressed && control.hovered) return UnityTheme.palette.buttonBackgroundHoverPressed
            if(control.pressed) return UnityTheme.palette.buttonBackgroundPressed
            if(control.hovered) return UnityTheme.palette.buttonBackgroundHover
            if(control.visualFocus) return UnityTheme.palette.buttonBackgroundFocus
            return UnityTheme.palette.buttonBackground
        }
    }
}