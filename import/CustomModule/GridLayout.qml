import QtQuick 2.0
import QtQuick.Controls 2.15

Rectangle {
    id: root
    color: '#fff'
    width: 300
    height: 300

    // 三行两列
//    Row {
//        spacing: 30

//        Column {
//            spacing: 10
//            Rectangle {color: '#ccc'; width: 50; height: 50}
//            Rectangle {color: '#ccc'; width: 50; height: 50}
//            Rectangle {color: '#ccc'; width: 50; height: 50}
//        }

//        Column {
//            spacing: 10
//            Rectangle {color: '#666'; width: 50; height: 50}
//            Rectangle {color: '#666'; width: 50; height: 50}
//            Rectangle {color: '#666'; width: 50; height: 50}
//        }
//    }

    // Grid
    Grid {
        rows: 3
        columns: 2
        spacing: 10

        Button {text: '1'; width: 50; height: 50}
        Button {text: '2'; width: 50; height: 50}
        Button {text: '3'; width: 50; height: 50}
        Button {text: '4'; width: 50; height: 50}
        Button {text: '5'; width: 50; height: 50}
    }
}
