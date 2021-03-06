import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12


ListView {
    id: list
    clip: true
    boundsBehavior: ListView.StopAtBounds
    ScrollBar.vertical: ScrollBar {}
    delegate: ContactItem {
        text: name
        icon: source
        selected: list.currentIndex === index
        onLeftClick: {
            list.currentIndex = index
        }
    }
}
