pragma Singleton
import QtQuick

QtObject {
    function _makeFont(family, size, weight) {
        return Qt.font({
            family: family,
            pointSize: size ?? 8,
            weight: weight ?? Font.Normal
        })
    }

    function sans(size, weight) {
        return _makeFont("Plus Jakarta Sans", size, weight)
    }

    function mono(size, weight) {
        return _makeFont("JetBrainsMono Nerd Font", size, weight)
    }
}