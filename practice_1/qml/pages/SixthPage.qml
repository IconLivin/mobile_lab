import QtQuick 2.0
import Sailfish.Silica 1.0

Dialog{
    id: dialog

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

    Column{
        anchors.fill:parent
        width: parent.width
        spacing:Theme.paddingMedium
        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 30
            text: qsTr("Сложение")
        }
        Row{
            spacing: Theme.paddingMedium
            TextField{
                id:tf1
               // color:"red"
                width: 200
            }
            TextField{
                id:tf2
               // color: "red"
                width: 200
            }
        }

     DialogHeader{}
    }
    onAccepted: console.log(parseInt(tf1.text) + parseInt(tf2.text))
}
