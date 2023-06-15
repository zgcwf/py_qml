import QtQuick 2.0


/*
anchors属性是用于在QML中定位和布局元素的属性。
它们允许您指定元素相对于其父元素或其他元素的位置和大小。下面是anchors属性的属于和用法:

anchors.left：元素的左边缘相对于父元素或其他元素的位置。
anchors.right：元素的右边缘相对于父元素或其他元素的位置。
anchors.top：元素的顶部边缘相对于父元素或其他元素的位置。
anchors.bottom：元素的底部边缘相对于父元素或其他元素的位置。
anchors.horizontalCenter：元素的水平中心相对于父元素或其他元素的位置。
anchors.verticalCenter：元素的垂直中心相对于父元素或其他元素的位置。
anchors.fill：元素填充整个父元素的区域。

*/
Rectangle {
    id: root
    color: '#fff'
    width: 200
    height: 200

    Rectangle {
        // 元素填充整个父元素的区域
        anchors.fill: parent
        color: "#ccc"
    }

    Rectangle {
        width: 50
        height: 50
        color: 'red'
        // 元素的左边缘相对于父元素或其他元素的位置
        anchors.right: parent.right
        anchors.bottom: root.bottom
        anchors.margins: 10
    }

    Rectangle {
        id:blue_rect
        width: 50
        height: 50
        color: 'blue'
        // 相对于父元素或其他元素居中对齐
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        // 简化写法
        // anchors.centerIn: parent
    }

    Rectangle {
        width: 50
        height: 50
        color: 'black'
        anchors.left: blue_rect.left
        anchors.top: blue_rect.bottom
        // 设置外边距
        anchors.topMargin: 10
    }
}
