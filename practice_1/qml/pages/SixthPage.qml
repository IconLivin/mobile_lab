import QtQuick 2.0
import Sailfish.Silica 1.0

Dialog{
    id: dialog
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
    onAccepted: console.log(parseInt(tf1.text)+parseInt(tf2.text))
}
