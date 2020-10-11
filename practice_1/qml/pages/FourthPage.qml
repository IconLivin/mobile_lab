import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page4

    SilicaFlickable {
        anchors.fill: parent

        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView
        PullDownMenu {
            MenuItem {
                text: qsTr("Домой")
                onClicked: pageStack.push(Qt.resolvedUrl("FirstPage.qml"))
            }
            MenuItem {
                text: qsTr("Кубики")
                onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
            }
            MenuItem {
                text: qsTr("row column")
                onClicked: pageStack.push(Qt.resolvedUrl("ThirdPage.qml"))
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
    
    Item{
        anchors.fill: parent
        Grid{
            rows:2
            columns: 3
            spacing: 30
            anchors.fill: parent
            anchors.leftMargin: 30
            anchors.topMargin: 30
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
