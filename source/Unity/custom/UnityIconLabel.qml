import QtQuick
import Unity

Item {
    id: iconLabel
    property var spacing: 2
    property var iconSize: 16
    property alias iconName: icon.name
    property alias iconSource: icon.source
    property alias text: label.text

    property var iconColor: UnityTheme.palette.labelText
    property var textColor: UnityTheme.palette.labelText
    property var textStyle: Unity.TextStyle.Default

    implicitHeight: 16//Math.max(iconSize, label.implicitHeight)
    implicitWidth: {
        if(icon.visible && label.visible) return iconSize + spacing + label.implicitWidth
        if(!icon.visible) return label.implicitWidth
        if(!label.visible) return iconSize
    }

    UnityIcon {
        id: icon
        color: iconLabel.iconColor
        size: iconLabel.iconSize
        anchors.verticalCenter: parent.verticalCenter
        visible: source.length > 0 || name.length > 0
    }
    Label {
        id: label
        color: iconLabel.textColor
        anchors {
            verticalCenter: parent.verticalCenter
            left: parent.left
            leftMargin: icon.visible ? iconLabel.iconSize + iconLabel.spacing : 0
        }
        visible: text.length > 0
        UnityStyle.textStyle: iconLabel.textStyle
    }
}