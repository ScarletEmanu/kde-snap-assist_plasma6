import QtQuick
import QtQuick.Window
import QtGraphicalEffects
import org.kde.kwin as KWinComponents

Item {
    y: - (mainWindow.y - minDy)
    x: - (mainWindow.x - minDx)
    height: Screen.height
    width: currentScreenWidth
    visible: showDesktopBackground && mainWindow.activated

    KWinComponents.WindowThumbnail {
        client: desktopWindowId
        id: desktopBackground
        anchors.fill: parent
    }

    /// configurable blur
    FastBlur {
        id: blurBackground
        anchors.fill: parent
        source: desktopBackground
        radius: desktopBackgroundBlur
        cached: false
        visible: desktopBackgroundBlur > 0
    }
}
