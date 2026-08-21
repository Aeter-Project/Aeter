pragma Singleton
import QtQuick

QtObject {
    function _makeFont(family, size, weight): Qt {
        return Qt.font({
            family: family,
            pointSize: size ?? 8,
            weight: weight ?? Font.Normal
        })
    }

    function sans(size, weight): Qt {
        return _makeFont("Plus Jakarta Sans", size, weight)
    }

    function mono(size, weight): Qt {
        return _makeFont("JetBrainsMono Nerd Font", size, weight)
    }
}