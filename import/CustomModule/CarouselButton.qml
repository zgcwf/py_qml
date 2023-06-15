import QtQuick 2.0

Rectangle {

    id: root
    width: 60
    height: parent.height
    color: '#f5f5f5'

    // alias: 别名, 可以将子控件或者子控件的属性暴露给外界
    // property alias newTxt: txt
    property alias text_icon: txt.text
    signal myClick(string str)

    Text {
        id: txt
        text: ''
        font.family: '微软雅黑'
        font.pixelSize: 24
        anchors.centerIn: parent
    }

    MouseArea {
        width: parent.width
        height: parent.height

        onClicked: {
            root.myClick('我是传递的参数')
            root.color = '#f5f5f5'
        }

        onPressed: {
            root.color = '#fff'
        }
    }
}
