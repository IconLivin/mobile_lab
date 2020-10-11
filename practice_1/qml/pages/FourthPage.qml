import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page4
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
