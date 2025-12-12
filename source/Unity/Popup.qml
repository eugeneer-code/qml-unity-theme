import QtQuick
import QtQuick.Templates as T
import Unity

T.Popup {
    id: control

    implicitWidth: Math.max(implicitBackgroundWidth + leftInset + rightInset,
        contentWidth + leftPadding + rightPadding)
    implicitHeight: Math.max(implicitBackgroundHeight + topInset + bottomInset,
        contentHeight + topPadding + bottomPadding)

    padding: 5


    enter: Transition {
        // grow_fade_in
        NumberAnimation { property: "scale"; from: 0.9; to: 1.0; easing.type: Easing.OutQuint; duration: 220 }
        NumberAnimation { property: "opacity"; from: 0.0; to: 1.0; easing.type: Easing.OutCubic; duration: 150 }
    }

    exit: Transition {
        // shrink_fade_out
        NumberAnimation { property: "scale"; from: 1.0; to: 0.9; easing.type: Easing.OutQuint; duration: 220 }
        NumberAnimation { property: "opacity"; from: 1.0; to: 0.0; easing.type: Easing.OutCubic; duration: 150 }
    }

    background: Rectangle {
        // FullScale doesn't make sense for Popup.
        radius: 6
        color: UnityTheme.palette.defaultBackground
        border.color: UnityTheme.palette.defaultBorder
        border.width: 1
    }

    T.Overlay.modal: Rectangle {
        color: UnityTheme.palette.highlightBackgroundHover
        Behavior on opacity { NumberAnimation { duration: 150 } }
    }
}