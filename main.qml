import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 350
    height: 450
    title: "Stack_View"

    StackView {
        id: stackView
        anchors.fill: parent

        initialItem: redPage
    }

    Component {
        id: redPage

        Page {
            id: pageRed

            header: ToolBar {
                Row {
                    spacing: 10
                    anchors.fill: parent

                    ToolButton {
                        text: "<--"
                        onClicked: stackView.pop()
                    }
                    Text {
                        text: "Red Page"
                        horizontalAlignment: Text.AlignHCenter
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }
            }

            Rectangle {
                color: "red"
                anchors.fill: parent

                Item {
                    anchors.fill: parent

                    Button {
                        text: "to_green"
                        anchors.top: parent.top
                        anchors.right: parent.right
                        onClicked: stackView.push(greenPage)
                    }

                    Button {
                        text: "to_yellow"
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                        onClicked: stackView.push(yellowPage)
                    }

                    Button {
                        text: "to_red"
                        anchors.bottom: parent.bottom
                        anchors.right: parent.right
                        onClicked: stackView.push(redPage)
                    }
                }
            }
        }
    }

    Component {
        id: greenPage

        Page {
            id: pageGreen

            header: ToolBar {
                Row {
                    spacing: 10
                    anchors.fill: parent

                    ToolButton {
                        text: "←"
                        onClicked: stackView.pop()
                    }
                    Text {
                        text: "Green Page"
                        horizontalAlignment: Text.AlignHCenter
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }
            }

            Rectangle {
                color: "green"
                anchors.fill: parent

                Item {
                    anchors.fill: parent

                    Button {
                        text: "to_green"
                        anchors.top: parent.top
                        anchors.right: parent.right
                        onClicked: stackView.push(greenPage)
                    }

                    Button {
                        text: "to_yellow"
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                        onClicked: stackView.push(yellowPage)
                    }

                    Button {
                        text: "to_red"
                        anchors.bottom: parent.bottom
                        anchors.right: parent.right
                        onClicked: stackView.push(redPage)
                    }
                }
            }
        }
    }

    Component {
        id: yellowPage

        Page {
            id: pageYellow

            header: ToolBar {
                Row {
                    spacing: 10
                    anchors.fill: parent

                    ToolButton {
                        text: "←"
                        onClicked: stackView.pop()
                    }
                    Text {
                        text: "Yellow Page"
                        horizontalAlignment: Text.AlignHCenter
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }
            }

            Rectangle {
                color: "yellow"
                anchors.fill: parent

                Item {
                    anchors.fill: parent


                    Button {
                        text: "to_green"
                        anchors.top: parent.top
                        anchors.right: parent.right
                        onClicked: stackView.push(greenPage)
                    }

                    Button {
                        text: "to_yellow"
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                        onClicked: stackView.push(yellowPage)
                    }

                    Button {
                        text: "to_red"
                        anchors.bottom: parent.bottom
                        anchors.right: parent.right
                        onClicked: stackView.push(redPage)
                    }
                }
            }
        }
    }
}
