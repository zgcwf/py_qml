import QtQuick 2.0
import QtQuick.Controls 2.15

Rectangle {
    id: root
    color: '#333'
    width: 300
    height: 300
    radius: 5

    //    property string result: '00:00:00'
    property int result: 1

    Text {
        id: txt
        text: result
        color: '#fff'
        font.bold: true
        font.pixelSize: 36
        font.family: '微软雅黑'
        anchors.centerIn: parent
    }

    Timer {
        id: time
        interval: 1000
        repeat: true
        onTriggered: {
            result++
        }
    }

    Button {
        text: time.running ? '暂停' : '开始'
        width: 80
        height: 40
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: 5

        onClicked: {
            time.running ? time.stop() : time.start()
        }
    }
}
