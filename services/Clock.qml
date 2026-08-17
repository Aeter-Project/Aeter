pragma Singleton

import QtQuick
import Quickshell

Singleton {
    id: root
    SystemClock {
        id: clock
        precision: SystemClock.Seconds
    }

    readonly property string time: {
        Qt.formatDateTime(clock.date, "hh:mm:ss")
    }
}