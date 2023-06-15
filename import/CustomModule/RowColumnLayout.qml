import QtQuick 2.0
import QtQuick.Controls 2.15

Rectangle {
    id: root
    color: '#fff'
    width: 300
    height: 300
    // 行布局
    Row {
        // 各元素之间的间距
        spacing: 20

        Button {
            width: 80
            height: 40
            text: "Send Message"
        }

        Button {
            width: 80
            height: 40
            text: "Hello World"
        }

        Button {
            width: 80
            height: 40
            text: "QML Learn"
        }
    }

    // 列布局
    Column {
        // 各元素之间的间距
        spacing: 20

        Button {
            width: 80
            height: 40
            text: "Send Message"
        }

        Button {
            width: 80
            height: 40
            text: "Hello World"
        }

        Button {
            width: 80
            height: 40
            text: "QML Learn"
        }
    }
}
