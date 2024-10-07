import QtQuick

Rectangle {
    id: page
    anchors.fill: parent
    color: "#ffffff"

    Rectangle {
        id: pattern
        color: "#ff00ff"
        height: parent.height * 0.67
        width: parent.width * 0.67


        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: 20
        anchors.leftMargin: 20
    }

    Column {

        spacing: 10
        anchors.left: pattern.right
        anchors.leftMargin: 10
        anchors.top: pattern.top
        anchors.bottom: pattern.bottom
        anchors.right: parent.right

        Rectangle {
            id: row_up
            radius:  180
            width: parent.width * 0.25
            height: parent.width * 0.25
            color: "#0000ff"
        }

        Text {
            id: row_count
            text: "0"
            font.family: "Helvetica"
            font.pointSize: 20
            color: black

        }

        Rectangle {
            id: row_down
            radius:  180
            width: parent.width * 0.25
            height: parent.width * 0.25
            color: "#0000ff"
        }
    }

    Row {
        spacing: 10
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.top: pattern.bottom
        anchors.bottom: parent.bottom
        anchors.right: parent.right

        Rectangle {
            id: color_block_prev
            radius:  180
            width: parent.height * 0.25
            height: parent.height * 0.25
            color: "#0000ff"
        }

        Text {
            id: color_block
            text: "0"
            font.family: "Helvetica"
            font.pointSize: 20
            color: black

        }

        Rectangle {
            id: color_block_next
            radius:  180
            width: parent.height * 0.25
            height: parent.height * 0.25
            color: "#0000ff"
        }
    }
}


