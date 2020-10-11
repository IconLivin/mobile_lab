import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page3
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
