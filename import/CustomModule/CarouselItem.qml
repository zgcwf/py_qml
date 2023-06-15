import QtQuick 2.0

Rectangle {
    id: root

    property int index: 1

    Image {
        id: image
        source: "../../images/img" + index + ".jpg"
        anchors.fill: parent
        anchors.centerIn: parent
        fillMode: Image.PreserveAspectFit
    }

    CarouselButton {
        text_icon: '<'
        anchors.left: parent.left
        anchors.leftMargin: 10
        onMyClick: {
            if (index > 1) {
                index--
            } else {
                index = 4
            }
            console.log(str, index)
        }
    }

    CarouselButton {
        text_icon: '>'
        anchors.right: parent.right
        anchors.rightMargin: 10

        onMyClick: {

            if (index < 4) {
                index++
            } else {
                index = 1
            }
            console.log(str, index)
        }
    }

    //    Rectangle {
    //        id: left_btn
    //        width: 60
    //        height: parent.height
    //        color: '#f5f5f5'
    //        anchors.left: parent.left
    //        anchors.leftMargin: 10

    //        Text {
    //            text: '<'
    //            font.family: '微软雅黑'
    //            font.pixelSize: 24
    //            anchors.centerIn: parent
    //        }

    //        MouseArea {
    //            width: parent.width
    //            height: parent.height

    //            onClicked: {
    //                index--
    //                if (index < 1) {
    //                    index = 4
    //                }
    //                console.log(index)
    //                left_btn.color = '#f5f5f5'
    //            }

    //            onPressed: {
    //                left_btn.color = '#fff'
    //            }
    //        }
    //    }

    //    Rectangle {
    //        id: right_btn
    //        width: 60
    //        height: parent.height
    //        color: '#f5f5f5'
    //        anchors.right: parent.right
    //        anchors.rightMargin: 10

    //        Text {
    //            text: '>'
    //            font.family: '微软雅黑'
    //            font.pixelSize: 24
    //            anchors.centerIn: parent
    //        }

    //        MouseArea {
    //            width: parent.width
    //            height: parent.height

    //            onClicked: {
    //                index++
    //                if (index > 4) {
    //                    index = 1
    //                }
    //                console.log(index)
    //                right_btn.color = '#f5f5f5'
    //            }

    //            onPressed: {
    //                right_btn.color = '#fff'
    //            }
    //        }
    //    }
}
