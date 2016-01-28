import QtQuick 2.0

Item {
    id: item1
    property alias totaltext: text1.text
    property alias freetext: text2.text
    property alias rectHei: rectangle2.height
    Rectangle {
        id: rectangle1
        opacity: 0.4

        anchors.top: text1.bottom
        anchors.topMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        gradient: Gradient {
            GradientStop { position: 0.0; color: Qt.lighter("gray");}
            GradientStop { position: 1.0; color: "gray";}
        }

        Rectangle {
            id: rectangle2
            y: 198
            height: 261
            opacity: 1

            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            gradient: Gradient {
                GradientStop { position: 0.0; color: Qt.lighter("gray");}
                GradientStop { position: 1.0; color: "gray";}
            }

            Text {
                id: text2
                x: 0
                text: "Text"
                anchors.top: parent.top
                anchors.topMargin: 5
                opacity: 1
                anchors.left: parent.left
                anchors.leftMargin: 0
                textFormat: Text.PlainText
                //            font.pixelSize: 12
            }
        }
    }

    Text {
        id: text1
        text: "Text"
        opacity: 0.4
        textFormat: Text.PlainText
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
        //        font.pixelSize: 12
    }

}