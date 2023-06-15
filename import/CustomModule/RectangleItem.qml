import QtQuick 2.0

Rectangle {
    id: root
    color: '#fff'
    width: 200
    height: 200

    Rectangle {
        x: 90
        y: 90
        width: 50
        height: 50
        color: "red"
        // 相当于怪异盒模型
        border.width: 2
        border.color: "lightsteelblue"
        radius: 10
        // 设置层叠优先级,z值大的在上层,如不设置z值,怎后面的元素覆盖前面的元素
        z: 1
    }

    Rectangle {
        // 相对于父元素居中
        anchors.centerIn: parent
        width: 50
        height: 50
        color: "blue"
        // 设置边框宽度与颜色
        border.width: 2
        border.color: "lightsteelblue"
        radius: 10
        z: 0
    }

    Text {
        width: 100
        height: 100
        font.pointSize: 14
        font.bold: true
        text: 'A very long text'
        color: 'green'
        // 设置省略号
        elide: Text.ElideMiddle

        // align text to the top
        verticalAlignment: Text.AlignTop
    }

    Image {
        id: icon
        anchors.bottom: parent.bottom
        width: 50
        height: 100 / 2
        source: "../../images/icon.png"
        fillMode: Image.PreserveAspectCrop
        clip: true
        opacity: 0.5
    }

    MouseArea {
        width: parent.width
        height: root.height
        onClicked: {
            root.height = 300
            icon.visible = !icon.visible
            root.color = '#fff'
        }

        onDoubleClicked: root.color = '#000'
    }
}
