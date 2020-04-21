import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12

Rectangle {
    id: me
    property alias icon: icon.source
    property alias text: label.text
    width: 90000000
    height: 60
    RowLayout{
        anchors.fill: parent
        anchors.leftMargin: 4
        anchors.rightMargin: 4
        spacing: 7
        Image {
            id: icon
            source: "icons/person.png"
            Layout.fillHeight: true
            Layout.preferredWidth: height
            Layout.margins: 7
        }
        Label {
            id: label
            text: "afsdsag"
            Layout.fillWidth: true
            font.bold: true
        }
    }
}
