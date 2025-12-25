import QtQuick
import QtQuick.Controls.impl
import QtQuick.Templates as T
import Unity

T.Button {
    id: control

    // drawing caching
    layer.enabled: true
    layer.smooth: true

    focusPolicy: Qt.TabFocus

    opacity: enabled ? 1.0 : 0.4

    //implicitWidth: internal.onlyIcon ? internal.height : contentItem.implicitWidth + leftPadding + rightPadding
    implicitWidth: contentItem.implicitWidth + leftPadding + rightPadding
    implicitHeight: internal.height

    leftPadding: internal.padding
    rightPadding: internal.padding
    spacing: internal.spacing

    icon.width: internal.iconSize
    icon.height: internal.iconSize
    icon.color: control.checked || control.highlighted ? control.palette.brightText :
            control.flat && !control.down ? (control.visualFocus ? control.palette.highlight : control.palette.windowText) : control.palette.buttonText

    QtObject {
        id: internal
        property Gradient borderGradient: Gradient {
            orientation: Gradient.Vertical
            GradientStop { position: 0.0; color: UnityTheme.palette.buttonBorder }
            GradientStop { position: 0.86; color: UnityTheme.palette.buttonBorder }
            GradientStop { position: 0.94; color: UnityTheme.palette.buttonBorderAccent }
            GradientStop { position: 1.0; color: UnityTheme.palette.buttonBorderAccent }
        }
        property Gradient borderPressedGradient: Gradient {
            orientation: Gradient.Vertical
            GradientStop { position: 0.0; color: UnityTheme.palette.buttonBorderPressed }
            GradientStop { position: 0.05; color: UnityTheme.palette.buttonBorderPressed }
            GradientStop { position: 0.11; color: UnityTheme.palette.buttonBorderAccent }
            GradientStop { position: 1.0; color: UnityTheme.palette.buttonBorderAccent }
        }
        property int height: {
            switch(control.UnityStyle.controlSize){
                case Unity.ControlSize.Mini: return 18
                case Unity.ControlSize.Regular: return 20
                case Unity.ControlSize.Large: return 24
                default: return 20
            }
        }
        property var padding: {
            switch(control.UnityStyle.controlSize){
                case Unity.ControlSize.Mini: return 8
                case Unity.ControlSize.Regular: return 12
                case Unity.ControlSize.Large: return 16
                default: return 12
            }
        }
        property var iconSize: {
            switch(control.UnityStyle.controlSize){
                case Unity.ControlSize.Mini: return 12
                case Unity.ControlSize.Regular: return 16
                case Unity.ControlSize.Large: return 16
                default: return 16
            }
        }
        property var spacing: 5
        property bool onlyIcon: control.text == ""
    }

    contentItem: UnityIconLabel {
        iconSource: control.icon.source
        iconSize: internal.iconSize
        text: control.text
        spacing: control.spacing
    }

    background: Item {
        Rectangle {
            anchors.fill: parent
            radius: 3
            gradient: {
                if(control.visualFocus) return null
                if(control.pressed) return internal.borderPressedGradient
                return internal.borderGradient
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
                if(control.pressed && control.hovered) return UnityTheme.palette.buttonBackgroundHoverPressed
                if(control.pressed) return UnityTheme.palette.buttonBackgroundPressed
                if(control.hovered) return UnityTheme.palette.buttonBackgroundHover
                if(control.visualFocus) return UnityTheme.palette.buttonBackgroundFocus
                return UnityTheme.palette.buttonBackground
            }
        }
    }
}