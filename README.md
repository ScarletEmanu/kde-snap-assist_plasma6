# <sub><img src="https://github.com/emvaized/kde-snap-assist/blob/main/assets/logo.png" height="48" width="48"></sub> KDE Snap Assist

[![KDE Store](https://img.shields.io/badge/KDE%20Store-download-blue?logo=KDE)](https://store.kde.org/p/1875687)
[![GitHub Release](https://img.shields.io/github/v/release/emvaized/kde-snap-assist?color=limegreen)](https://github.com/emvaized/kde-snap-assist/releases)


> [!NOTE]\
> **⚠️ Only Plasma 5 is supported for now! Plasma 6 port is being [worked on](https://github.com/emvaized/kde-snap-assist/issues/47#issuecomment-2307760205)**

This KWin script for KDE Plasma suggests other window thumbnails on snap. It tries to replicate the famous Windows 10/11 feature of the same name.

Assist can be shown by dragging a window to the screen edge, as well as via default keyboard shortcuts (<kbd>super</kbd> + arrows).
You can select the window with mouse, as well as with arrow keys + <kbd>Enter</kbd>. 
To dismiss the assist, hit <kbd>Escape</kbd> key, press the close button or click anywhere on the empty area. 
Script also supports quarter and triple tiling: you can switch layouts with the <kbd>Tab</kbd> key or using the button in corner.

Ideas, suggestions, bugs reports and contributions to the project are welcome!

## Support
This project is in need of your support! If you enjoy it and want to keep it going on, please consider supporting by making a small donation using one of the services below! 

<a href="https://ko-fi.com/emvaized"><img src="https://cdn.prod.website-files.com/5c14e387dab576fe667689cf/64f1a9ddd0246590df69ea0b_kofi_long_button_red%25402x-p-800.png" alt="Support on Ko-fi" height="40"></a> &nbsp;&nbsp; <a href="https://liberapay.com/emvaized/donate"><img alt="Donate using Liberapay" src="https://liberapay.com/assets/widgets/donate.svg" height="40"></a> &nbsp;&nbsp; <a href="https://emvaized.github.io/donate/bitcoin/"><img src="https://github.com/emvaized/emvaized.github.io/blob/main/donate/bitcoin/assets/bitcoin-donate-button.png?raw=true" alt="Donate Bitcoin" height="40" /></a>

## Screenshot
![screenshot_snapassist](./assets/screenshot.png)

## Manual Installation
In order to install this script manually from GitHub, you'd need to:
- Delete current version of script and re-login to KDE Plasma
- Download the code as .zip (green "Code" button > "Download as ZIP"), and rename file to .kwinscript extension
- Use the "Install from file" button in System settings > Windows manager > KWin scripts
- Re-login to Plasma again (or restart KWin) to make sure the script is installed

There is also experimental [2.0-dev](https://github.com/emvaized/kde-snap-assist/releases/tag/v.2.0-dev2) version, which you could help to test!

## Snap Groups

Since version `1.4`, there are also experimental *snap group* features:
- Minimize/restore snapped windows together ([demo](./assets/demos/snap%20groups/minimize-together.gif))
- Raise snapped windows together ([demo](./assets/demos/snap%20groups/raise-together.gif))
- On close snapped window, try to fill the area ([demo](./assets/demos/snap%20groups/fill-on-close.gif))
- Try to fit snapped window in group behind ([demo](./assets/demos/snap%20groups/fit-in-group-behind.gif))

When you enable any of these options in the script settings, it will start tracking windows snapped via the script. Group of snapped windows is remembered once you fill the layout using the assist. Window is no longer considered snapped once it was closed or moved manually using the mouse (sometimes you need to do it twice to break it from the group). Snap groups are not persistent, and should be recreated after each reboot.


## Compatibility notes

#### Compatibility with [Window Gap](https://github.com/nclarius/tile-gaps)

- Since version 1.2, there's an option "Snap detect tolerance" in the script settings, which basically defines how much window's size and position can differ to still be detected as "snapped" by the script. If you use some external scripts which constantly modify windows size and position, you may want to set it to `15px` or `25px`, so that Snap Assist could detect your snaps.

#### Compatibility with [Exquisite](https://www.pling.com/p/1852610)

- Most of default layouts are supported out the box. You may also like to enable "Hide after tiling a window" in Exquisite's settings for the smoothest workflow. Over time, support for custom layouts will expand, possibly with ability to edit them.

#### Compatibility with [Sticky Window Snapping](https://www.pling.com/p/1112552)

- Fully compatible. Highly recommended to be used in conjunction with Snap Assist!

#### Compatibility with diagonal keyboard shortcuts

- Version 1.4 introduces an option "Delay before showing the assist", which gives some time to execute 'diagonal' shortcuts (<kbd>super</kbd> + <kbd>↑</kbd> + <kbd>→</kbd>) before Assist gets shown. The default value is `100ms`.


## Troubleshooting
- To apply the new settings, you may need to re-enable the script or restart KWin. The same is recommended if you switch from one version of the script to another
- Assist will not show if you have no other windows matching the conditions set in the script settings. For example, by default the script does not show windows from other screens — so, if you have only one window on the current screen, assist will not show
- Script settings button is not visible, or complains that "Plugin doesn't provide configuration file in the expected location" — this is a known KWin's bug, not related to the script. Make sure your system is up-to-date, as it seems to be fixed now. If it doesn't help, you can also try to install the script [manually](https://github.com/emvaized/kde-snap-assist#manual-installation)
- KWin crashes after sleep — it was reported [here](https://github.com/emvaized/kde-snap-assist/issues/35) that you may need to install `pygdbmi` library to fix the crash after sleep
