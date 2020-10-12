import QtQuick 2.0
import Sailfish.Silica 1.0

 Page {
    id: page5

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
        Column{
            spacing: 45
            anchors.centerIn: parent
             Rectangle{
                id: rect
                anchors.horizontalCenter: parent.horizontalCenter
                width:200
                height: 200

                color: "black"
//                transform:[ Scale{xScale: 0.5;yScale: 1}, Rotation{
//                    angle: 45}, Translate{}]
            }
            Rectangle{
                id: newRect
                width:200
                height: 200
                color: "black"
                transform:[ Scale{xScale: 0.5;yScale: 1}, Rotation{
                    angle: 45}, Translate{x:page5.width/2-newRect.width/2}]
                visible: false
            }
             Button{
                width: 400
                height: 30
                text: "Tranform"
                onClicked: {
                    rect.visible? rect.visible = false: rect.visible = true
                    newRect.visible? newRect.visible = false: newRect.visible = true
                    }
                }
             Button{
                width: 400
                height: 30
                text: "Animation"
                onClicked: {
                   move.running? move.stop(): move.start()
                    }
                }
        }
        SequentialAnimation{
            id:move
            loops: Animation.Infinite
            ParallelAnimation{
                PropertyAnimation{
                    targets: [rect, newRect]
                    properties: "y"
                    from: 0
                    to: -250
                    duration: 3000
                    running: false
                }
                PropertyAnimation{
                    targets: [rect, newRect]
                    properties: "scale"
                    from: 1
                    to : 3
                    duration: 3000
                    running: false
                }
             }
            ParallelAnimation{
                PropertyAnimation{
                    targets: [rect, newRect]
                    properties: "y"
                    from: -250
                    to: 0
                    duration: 3000
                    running: false
                }
                PropertyAnimation{
                    targets: [rect, newRect]
                    properties: "scale"
                    from: 3
                    to : 1
                    duration: 3000
                    running: false
                }
         }
        }

     }
 }
