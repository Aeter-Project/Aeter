import QtQuick
import Quickshell
import qs.Theme
import qs.Services

Scope {
    id: bar
    readonly property int height: 20

    // SystemClock {
    //     id: clock
    //     precision: SystemClock.Seconds
    // }

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

                implicitHeight: bar.height
                color: Colors.background

                Text {
                    anchors.centerIn: parent
                    text: Clock.time
                    color: Colors.text
                    font: Typography.sans(6)
                }
            }
        }
    }   
}