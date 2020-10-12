import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page3

    SilicaFlickable {
        anchors.fill: parent

        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView
        PullDownMenu {
            MenuItem {
                text: qsTr("Menu")
                onClicked: pageStack.push(Qt.resolvedUrl("FirstPage.qml"))
            }
            MenuItem {
                text: qsTr("Cubes")
                onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
            }
            MenuItem {
                text: qsTr("Rows and columns")
                onClicked: pageStack.push(Qt.resolvedUrl("ThirdPage.qml"))
            }
            MenuItem {
                text: qsTr("Grid")
                onClicked: pageStack.push(Qt.resolvedUrl("FourthPage.qml"))
            }
            MenuItem {
                text: qsTr("Translate Rotate")
                onClicked: pageStack.push(Qt.resolvedUrl("FifthPage.qml"))
            }
            MenuItem {
                text: qsTr("Dialog")
                onClicked: pageStack.push(Qt.resolvedUrl("SixthPage.qml"))
            }
        }
    }
    
    Item{
        anchors.fill: parent
        Column {
            spacing: 30
            anchors.fill: parent
            anchors.topMargin: 30
            Row{
                spacing: 30
                anchors.left: parent.left
                anchors.margins: 30
                Rectangle{
                    id:red
                    color: "red"
                    width: 200
                    height: 200
                }
                Rectangle{
                    id:green
                    color: "lightgreen"
                    width: 200
                    height: 200
                }
                Rectangle{
                    id:blue
                    color: "blue"
                    width: 200
                    height: 200

                }
            }
            Row{
                spacing: 30
                anchors.left: parent.left
                anchors.margins: 30
                Rectangle{
                    id:pink
                    color: "pink"
                    width: 200
                    height: 200

                }
                Item {
                    width: 200
                    height: 200
                }
                Rectangle{
                    id: black
                    color: "black"
                    width: 200
                    height: 200
                }
            }
        }
    }
}
