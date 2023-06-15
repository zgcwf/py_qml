import QtQuick 2.0
import QtQuick.Controls 2.15

Rectangle {
    id: root
    color: '#fff'
    width: 300
    height: 300

    Flow {
        // 各元素之间的间距
        spacing: 10
        // 可以设置宽高
        width: 200

        Button {text: '1'; width: 150; height: 50}
        Button {text: '2'; width: 50; height: 150}
        Button {text: '3'; width: 50; height: 50}
        Button {text: '4'; width: 50; height: 50}
        Button {text: '5'; width: 50; height: 50}
    }
}
