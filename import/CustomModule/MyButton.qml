import QtQuick 2.15
import QtQuick.Controls 2.15

// 导入的模块名要大写
import '../../utils.js' as Utils

Button {
    id: root
    width: 200
    height: 100
    text: 'good'
    font.bold: true

    // 图标
    icon.source: '../../images/icon.png'
    icon.width: 50
    icon.height: 50
    icon.color: "transparent"

    // 给按钮设置背景
    background: Rectangle {
        anchors.fill: parent
        color: 'red'
        radius: 10
        opacity: 0.7
    }

    // 单击事件, 使得按钮旋转3度
    onClicked: {
        root.rotation += 3
    }
    // 双击事件, 使得按钮增大20%
    onDoubleClicked: {
        root.scale += 0.2
    }
    // 按压事件, 位置每次+10
    onPressed: Utils.move(root)

}
