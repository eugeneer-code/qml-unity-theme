import QtQuick
import QtQuick.Window
import QtQuick.Controls.impl
import QtQuick.Templates as T
import QtQuick.Controls.Material
import QtQuick.Controls.Material.impl
import Unity


T.ComboBox {
    id: control

    implicitWidth: 160
    implicitHeight: 18

    focusPolicy: Qt.TabFocus

    padding: 6
    leftPadding: padding + (!control.mirrored || !indicator || !indicator.visible ? 0 : indicator.width + spacing)
    rightPadding: padding + (control.mirrored || !indicator || !indicator.visible ? 0 : indicator.width + spacing)

    delegate: MenuItem {
        required property var model
        required property int index

        width: ListView.view.width
        text: model[control.textRole]
        //Material.foreground: control.currentIndex === index ? ListView.view.contentItem.Material.accent : ListView.view.contentItem.Material.foreground
        highlighted: control.highlightedIndex === index
        hoverEnabled: control.hoverEnabled
    }

    indicator: UnityIcon {
        x: control.mirrored ? control.padding : control.width - width - control.padding
        y: control.topPadding + (control.availableHeight - height) / 2
        size: 8
        color: UnityTheme.palette.labelText
        source: "qrc:/Unity/icons/combobox_arrow.svg"
    }

    contentItem: T.TextField {
        leftPadding: 4
        rightPadding: 20

        text: control.editable ? control.editText : control.displayText

        enabled: control.editable
        autoScroll: control.editable
        readOnly: control.down
        inputMethodHints: control.inputMethodHints
        validator: control.validator
        selectByMouse: control.selectTextByMouse

        color: UnityTheme.palette.labelText
        selectionColor: UnityTheme.palette.highlightBackground
        selectedTextColor: UnityTheme.palette.highlightTextInactive
        verticalAlignment: Text.AlignVCenter

        cursorDelegate: CursorDelegate { }
    }

    background: Item {
        Rectangle {
            anchors.fill: parent
            radius: 3
            gradient: {
                if(control.visualFocus) return null
                //if(control.pressed) return UnityTheme.palette.borderPressedGradient
                return UnityTheme.palette.borderGradient
            }
            border.width: control.activeFocus ? 1 : 0
            border.color: UnityTheme.palette.buttonBorderAccentFocus
        }
        Rectangle {
            anchors {
                fill: parent
                margins: 1
            }
            radius: 2
            color: {
                if(control.hovered) return UnityTheme.palette.dropdownBackgroundHover
                //if(control.visualFocus) return UnityTheme.palette.buttonBackgroundFocus
                return UnityTheme.palette.dropdownBackground
            }
        }
    }

    popup: T.Popup {
        y: control.editable ? control.height - 5 : 0
        width: control.width
        height: Math.min(contentItem.implicitHeight + verticalPadding * 2, control.Window.height - topMargin - bottomMargin)
        transformOrigin: Item.Top
        topMargin: 12
        bottomMargin: 12
        verticalPadding: 8

        enter: Transition {
            // grow_fade_in
            NumberAnimation { property: "scale"; from: 0.9; easing.type: Easing.OutQuint; duration: 220 }
            NumberAnimation { property: "opacity"; from: 0.0; easing.type: Easing.OutCubic; duration: 150 }
        }

        exit: Transition {
            // shrink_fade_out
            NumberAnimation { property: "scale"; to: 0.9; easing.type: Easing.OutQuint; duration: 220 }
            NumberAnimation { property: "opacity"; to: 0.0; easing.type: Easing.OutCubic; duration: 150 }
        }

        contentItem: ListView {
            clip: true
            implicitHeight: contentHeight
            model: control.delegateModel
            currentIndex: control.highlightedIndex
            highlightMoveDuration: 0

            T.ScrollIndicator.vertical: ScrollIndicator { }
        }

    }
}