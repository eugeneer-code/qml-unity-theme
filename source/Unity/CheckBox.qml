import QtQuick
import QtQuick.Controls.impl
import QtQuick.Templates as T
import Unity

T.CheckBox {
    id: control

    implicitWidth: Math.max(implicitBackgroundWidth + leftInset + rightInset,
                            implicitContentWidth + leftPadding + rightPadding)
    implicitHeight: Math.max(implicitBackgroundHeight + topInset + bottomInset,
                             implicitContentHeight + topPadding + bottomPadding,
                             implicitIndicatorHeight + topPadding + bottomPadding)

    padding: 0
    spacing: 8
    activeFocusOnTab: true
    onPressed: forceActiveFocus(control)

    opacity: enabled ? 1.0 : 0.4

    indicator: Rectangle {
        implicitWidth: 14
        implicitHeight: 14

        x: control.text ? (control.mirrored ? control.width - width - control.rightPadding : control.leftPadding) : control.leftPadding + (control.availableWidth - width) / 2
        y: control.topPadding + (control.availableHeight - height) / 2

        color: UnityTheme.palette.inputBackground
        border.width: 1
        border.color: {
            if(control.visualFocus) return UnityTheme.palette.inputBorderFocus
            if(control.pressed) return UnityTheme.palette.inputBorderFocus
            if(control.hovered) return UnityTheme.palette.inputBorderHover
            return UnityTheme.palette.inputBorder
        }
        radius: 2

        UnityIcon {
            anchors.centerIn: parent
            visible: control.checkState != Qt.Unchecked
            size: 14
            source: control.checkState == Qt.PartiallyChecked ?
                        "qrc:/Unity/icons/checkbox_intermediate.svg" :
                        "qrc:/Unity/icons/checkbox_check.svg"
            color: UnityTheme.palette.labelText
        }
    }

    contentItem: Label {
        leftPadding: control.indicator && !control.mirrored ? control.indicator.width + control.spacing : 0
        rightPadding: control.indicator && control.mirrored ? control.indicator.width + control.spacing : 0
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
        text: control.text
    }
}