module Custom.Startup where

import XMonad
import XMonad.Util.SpawnOnce

myStartupHook :: X ()
myStartupHook = do
    spawnOnce "picom"
    spawnOnce "nm-applet"
    spawnOnce "pasystray"
    spawnOnce "blueberry-tray"
    spawnOnce "nitrogen --restore"

    spawnOnce "polybar"
    spawnOnce "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
    spawnOnce "sleep 2 && xmonad --restart"
