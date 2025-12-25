import QtQuick
import QtQuick.Templates as T
import Unity

T.TabBar {
    id: control

    implicitWidth: Math.max(implicitBackgroundWidth + leftInset + rightInset,
                            implicitContentWidth + leftPadding + rightPadding)
    implicitHeight: 20

    spacing: 0

    contentItem: ListView {
        model: control.contentModel
        currentIndex: control.currentIndex

        spacing: control.spacing
        orientation: ListView.Horizontal
        boundsBehavior: Flickable.StopAtBounds
        flickableDirection: Flickable.AutoFlickIfNeeded
        snapMode: ListView.SnapToItem

        highlightMoveDuration: 250
        highlightResizeDuration: 0
        //highlightFollowsCurrentItem: true
        //highlightRangeMode: ListView.ApplyRange
        preferredHighlightBegin: 48
        preferredHighlightEnd: width - 48

        /*highlight: Item {
            z: 2
            Rectangle {
                height: 2
                width: parent.width
                y: control.position === T.TabBar.Footer ? 0 : parent.height - height
                color: UnityTheme.palette.highlightBackground
            }
        }*/
    }

    background: Rectangle {
        color: UnityTheme.palette.defaultBackground
    }
}