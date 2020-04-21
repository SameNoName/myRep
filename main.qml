import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
Window {
    visible: true
    width: 320
    height: 480
    title: qsTr("Контакты")
    ListModel {
        id: contactsModel
        ListElement {
            name: "Andrei"
        }
        ListElement {
            name: "Andrei1"
        }
        ListElement {
            name: "Andrei2"
        }
        ListElement {
            name: "Andrei3"
        }
    }
    ColumnLayout {
        anchors.fill: parent
        MainToolBar {
            Layout.fillWidth: true
            onNewItem: {
                contactsModel.append({name: text});
            }
        }
        ContactList {
            Layout.fillHeight: true
            Layout.fillWidth: true
            model: contactsModel
        }
    }
}
