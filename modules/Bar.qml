import "../theme"
import QtQuick
import QtQuick.Layouts
import Quickshell

Scope {
    id: callista_bar

    // Clock
    SystemClock {
        id: clock
        precision: SystemClock.Seconds
    }

    Variants {
        model: Quickshell.screens
        delegate: Component {
            PanelWindow {
                required property var modelData
                screen: modelData

                anchors {
                    bottom: true
                    left: true
                    right: true
                }

                implicitHeight: 20
                color: Colors.background

                

                Text {
                    anchors.centerIn: parent
                    text: Qt.formatTime(clock.date, "hh:mm")
                    color: Colors.text
                    font: Typography.sans(6, Font.Medium)
                }
            }
        }
    }   
}