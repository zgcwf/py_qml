import QtQuick 2.0
import QtQuick.Controls 2.15

Rectangle {
    id: root
    color: '#fff'
    width: 200
    height: 100
    // 定义信号
    signal customSignal(string str, int num)

    function callback(a, b) {
        console.log(a, b)
    }

    Button {
        text: "Send Message"
        onClicked: {
            // 发送信号
            customSignal('谢谢惠顾', 100)
        }
    }

    // 方案一:
    //    Component.onCompleted: {
    //        customSignal.connect(callback)
    //    }

    // 方案二:
    //    Connections {
    //        target: root
    //        //        onCustomSignal: {
    //        //            console.log(num, str)
    //        //        }
    //        function onCustomSignal(a, b) {
    //            console.log(a, b)
    //        }
    //    }
}
