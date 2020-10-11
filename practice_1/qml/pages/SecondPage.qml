import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page2

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
