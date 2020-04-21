import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

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

    ListView {
        id: list
        anchors.fill: parent
        model: contactsModel
        delegate: ContactItem {
            text: name
            selected: list.currentIndex === index
            onLeftClick: {
                list.currentIndex = index
            }
        }
    }
}
