import XMonad

-- Custom
import Custom.Keys
import Custom.Programs
import Custom.Layouts
import Custom.Decorations
import Custom.Startup
import Custom.Workspaces

import XMonad.Util.EZConfig
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.ManageDocks

main :: IO ()
main = 
    do
        xmonad
        $ ewmhFullscreen
        $ ewmh
        $ docks
        $ def {
            terminal = myTerminal,
            layoutHook = myLayoutHook,
            normalBorderColor = myNormalBorderColor,
            focusedBorderColor = myFocusedBorderColor,
            manageHook = manageHook def <+> manageDocks,
            startupHook = myStartupHook,
            workspaces = myWorkspaces
        }
        `additionalKeysP` myKeys
