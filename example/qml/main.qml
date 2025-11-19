import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Unity 1.0

import "Pages"

Window {
    width: 640
    height: 480
    visible: true
    title: "Unity Example"
    color: UnityTheme.palette.windowBackground

    // Sidebar model
    property var pages: [
        {name: "Typography"}
    ]

    Component.onCompleted: {
        listView.currentIndex = 0
        stack.currentIndex = 0
    }

    Item {
        id: sideBar
        height: parent.height
        width: 200
        ListView {
            id: listView
            anchors.fill: parent
            model: pages
            delegate: ItemDelegate {
                highlighted: index == listView.currentIndex
                text: modelData.name
                width: listView.width
                height: 40
                onClicked: {
                    listView.currentIndex = index
                    stack.currentIndex = index
                }
            }
        }

        ComboBox {
            anchors {
                bottom: parent.bottom
                margins: 12
                left: parent.left
                right: parent.right
            }
            height: 40
            model: ["Dark", "Light"]
            onActivated: (index) => { UnityTheme.currentTheme = index }
        }
    }
    Rectangle {
        width: 1
        height: parent.height
        color: UnityTheme.palette.windowBorder
        x: sideBar.width+1
    }

    StackLayout {
        id: stack
        anchors {
            fill: parent
            leftMargin: sideBar.width + 1
        }
        currentIndex: 0

        Typography{}
    }
}
