import QtQuick
import QtQuick.Templates as T
import QtQuick.Controls.impl
import QtQuick.Controls.Material
import QtQuick.Controls.Material.impl
import Unity

T.TextField {
    id: control

    implicitWidth: 176
    implicitHeight: 18

    leftPadding: 4
    rightPadding: 4
    // Need to account for the placeholder text when it's sitting on top.
    topPadding: 1
    bottomPadding: 1

    opacity: enabled ? 1.0 : 0.4

    color: UnityTheme.palette.labelText
    selectionColor: UnityTheme.palette.highlightBackground
    selectedTextColor: UnityTheme.palette.highlightTextInactive
    placeholderTextColor: UnityTheme.palette.defaultText
    verticalAlignment: TextInput.AlignVCenter

    font.pixelSize: 12
    font.family: "Inter"

    cursorDelegate: CursorDelegate { }

    Label {
        id: placeholder
        width: control.width - (control.leftPadding + control.rightPadding)
        text: control.placeholderText
        font: control.font
        color: control.placeholderTextColor
        elide: Text.ElideRight
        renderType: control.renderType
        leftPadding: control.leftPadding
    }

    background: Item {
        Rectangle {
            anchors.fill: parent
            radius: 3
            color: "transparent"
            gradient: {
                if(!control.enabled) return null
                if(control.visualFocus || control.hovered) return null
                return UnityTheme.palette.borderGradient
            }
            border.width: (control.activeFocus || control.hovered || !control.enabled) ? 1 : 0
            border.color: {
                if(!control.enabled) return UnityTheme.palette.inputBorder
                if(control.visualFocus) return UnityTheme.palette.inputBorderFocus
                if(control.hovered) return UnityTheme.palette.inputBorderHover
                return UnityTheme.palette.inputBorder
            }
        }
        Rectangle {
            anchors {
                fill: parent
                margins: 1
            }
            radius: 2
            color: UnityTheme.palette.inputBackground
        }
    }
}