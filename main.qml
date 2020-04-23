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
            name: "Иннокентий"
            source: "icons/ghana.png"
        }
        ListElement {
            name: "Дмитрий"
            source: "icons/goblin.png"
        }
        ListElement {
            name: "Иван"
            source: "icons/kappa.png"
        }
        ListElement {
            name: "Евгений"
            source: "icons/maestro.png"
        }
        ListElement {
            name: "Виталий"
            source: "icons/papich.png"
        }
        ListElement {
            name: "Святослав"
            source: "icons/ricardo.png"
        }
        ListElement {
            name: "Гений29"
            source: "icons/ze.png"
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
