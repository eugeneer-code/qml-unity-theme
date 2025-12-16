import QtQuick
import QtQuick.Templates as T
import QtQuick.Controls.impl
import Unity

T.MenuItem {
    id: control

    implicitWidth: Math.max(implicitBackgroundWidth + leftInset + rightInset,
        implicitContentWidth + leftPadding + rightPadding)
    implicitHeight: Math.max(implicitBackgroundHeight + topInset + bottomInset,
        implicitContentHeight + topPadding + bottomPadding,
        implicitIndicatorHeight + topPadding + bottomPadding)

    padding: 8
    spacing: 3
    height: 18

    icon.width: 16
    icon.height: 16
    icon.color: UnityTheme.palette.labelText

    indicator: UnityIcon {
        x: control.text ? (control.mirrored ? control.width - width - control.rightPadding : control.leftPadding) : control.leftPadding + (control.availableWidth - width) / 2
        y: control.topPadding + (control.availableHeight - height) / 2
        visible: control.checkable
        //control: control
        //checkState: control.checked ? Qt.Checked : Qt.Unchecked
    }

    arrow: UnityIcon {
        x: control.mirrored ? control.padding : control.width - width - control.padding
        y: control.topPadding + (control.availableHeight - height) / 2

        visible: control.subMenu
        //mirror: control.mirrored
        color: UnityTheme.palette.labelText
        //source: "qrc:/qt-project.org/imports/QtQuick/Controls/Material/images/arrow-indicator.png"
    }

    contentItem: Item {
        readonly property real arrowPadding: control.subMenu && control.arrow ? control.arrow.width + control.spacing : 0
        readonly property real indicatorPadding: control.checkable && control.indicator ? control.indicator.width + control.spacing : 0
        //leftPadding: !control.mirrored ? indicatorPadding : arrowPadding
        //rightPadding: control.mirrored ? indicatorPadding : arrowPadding

        UnityIcon {
            id: iconItem
            image.source: control.icon.source
            //image.name: control.icon.name
            color: UnityTheme.palette.labelText
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            visible: icon.source != "" || icon.name != ""
            size: 16
        }
        Label {
            id: label
            text: control.text
            anchors.fill: parent
            anchors.leftMargin: iconItem.visible ? 16 + control.spacing : 0
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

    background: Rectangle {
        implicitWidth: 200
        implicitHeight: 18
        radius: 5
        color: {
            if(control.highlighted) return UnityTheme.palette.highlightBackground
            if(control.hovered) return UnityTheme.palette.highlightBackgroundHover
            return UnityTheme.palette.defaultBackground
        }
    }
}