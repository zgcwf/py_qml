import QtQuick 2.0
import QtQuick.Controls 2.0

Rectangle {
    id: root
    color: '#fff'
    width: 150
    height: 150

    Timer {
        // https://www.waveshare.net/study/article-1013-1.html
        //interval属性用来设置时间间隔，单位是毫秒，默认值是1000毫秒；
        //repeat属性设置是否重复触发，如果为false，值触发一次，并将running自动设为false
        //running属性为true时开启定时器，不再需要start方法了, false时停止定时器
        //定时器触发执行onTriggered()信号处理函数，可以定义一些操作
        id: time
        interval: 30
        repeat: true
        running: true
        onTriggered: {
            root.rotation += 3
        }
    }

    Button {
        width: 80
        height: 40
        text: 'click'
        onClicked: time.start()
    }
}
