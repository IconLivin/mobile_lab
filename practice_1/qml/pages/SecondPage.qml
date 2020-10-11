import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page2

    SilicaFlickable {
        anchors.fill: parent

        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView
        PullDownMenu {
            MenuItem {
                text: qsTr("Домой")
                onClicked: pageStack.push(Qt.resolvedUrl("FirstPage.qml"))
            }
            MenuItem {
                text: qsTr("row column")
                onClicked: pageStack.push(Qt.resolvedUrl("ThirdPage.qml"))
            }
            MenuItem {
                text: qsTr("grid")
                onClicked: pageStack.push(Qt.resolvedUrl("FourthPage.qml"))
            }
            MenuItem {
                text: qsTr("Перемещение и анимация")
                onClicked: pageStack.push(Qt.resolvedUrl("FifthPage.qml"))
            }
            MenuItem {
                text: qsTr("Диалог")
                onClicked: pageStack.push(Qt.resolvedUrl("SixthPage.qml"))
            }
        }
    }

    Item {
        anchors.fill: parent
        Rectangle{
            id:red
            color: "red"
            width: 200
            height: 200
        }
        Rectangle{
            id:green
            color: "lightgreen"
            anchors.left: red.right
            anchors.top: red.verticalCenter
            width: 200
            height: 200
        }
        Rectangle{
            id:blue
            color: "blue"
            z:10
            anchors.left: green.horizontalCenter
            width: 200
            height: 200
            Text{
                text: "Квадрат"
                color: "white"
                anchors.centerIn: parent
                font.family: "Roboto"
                font.pointSize: 30
            }
        }
    }
}
