import QtQuick
import QtQuick.Controls
import QtQuick.Dialogs
import Unity

TextField {
    id: control

    implicitWidth: 130
    implicitHeight: 18

    leftPadding: 4
    rightPadding: 24
    topPadding: 1
    bottomPadding: 1

    opacity: enabled ? 1.0 : 0.4

    property color colorValue: text
    property bool useTextBindings: true

    signal colorSelected(var selectedColor)

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
            color: control.enabled ? UnityTheme.palette.inputBorder : "transparent"
            gradient: {
                if(!control.enabled) return null
                if(control.visualFocus || control.hovered) return null
                return UnityTheme.palette.borderGradient
            }
            border.width: (control.activeFocus || control.hovered || !control.enabled) ? 1 : 0
            border.color: {
                if(!control.enabled) return UnityTheme.palette.inputBorder
                if(control.activeFocus) return UnityTheme.palette.inputBorderFocus
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

            Rectangle {
                anchors.right: parent.right
                radius: 2
                height: parent.height
                width: parent.height
                color: control.colorValue

                Rectangle {
                    height: parent.height
                    width: 2
                    color: control.colorValue
                }
            }
        }
    }

    MouseArea {
        anchors {
            right: parent.right
        }
        width: control.height
        height: control.height
        onClicked: colorDialog.open()
    }

    ColorDialog {
        id: colorDialog
        title: "Color picker"
        selectedColor: control.colorValue
        options: ColorDialog.DontUseNativeDialog | ColorDialog.ShowAlphaChannel
        onAccepted: {
            control.colorValue = colorDialog.selectedColor
            colorSelected(control.colorValue)
            if(useTextBindings) {
                control.text = colorDialog.selectedColor.toString()
            }
        }
    }

    onTextChanged: {
        if(!useTextBindings) return
        control.colorValue = text
    }
}