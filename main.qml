import QtQuick 2.15
import QtQuick.Window 2.15

import CustomModule 1.0

Window {
    // 设置元素可见性
    visible: true

    width: Constants.width
    height: Constants.height

    // 设置宽高的最大/小值
    minimumHeight: 300
    minimumWidth: 300
    //    maximumWidth: 1000
    //    maximumHeight: 1000

    // 设置元素透明度
    opacity: 0.9

    title: qsTr("Hello Qml")
    color: Constants.backgroundColor

    //    RectangleItem {
    //        anchors.centerIn: parent
    //    }

    //    AnchorsItem {
    //        anchors.left: parent.left
    //    }

    //    CarouselItem {
    //        anchors.fill: parent
    //    }

    //    MyButton {}

    //    Signal {
    //        id: id_signal
    //    }

    //    Connections {
    //        target: id_signal
    //        ignoreUnknownSignals: true
    //        function onCustomSignal(str, num) {
    //            console.log('>>>', str, num)
    //            id_signal.x += 10
    //        }
    //    }

    //    MyTimer {}

    //    Clock {
    //        anchors.centerIn: parent
    //    }

    //    RowColumnLayout {}

    //    GridLayout {}

    //    FlowLayout {}
    Tv {}
}
