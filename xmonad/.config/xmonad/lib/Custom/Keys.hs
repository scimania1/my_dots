module Custom.Keys where

import XMonad
import XMonad.Layout
import qualified XMonad.Layout.MultiToggle as MT (Toggle(..))
import XMonad.Layout.MultiToggle.Instances (StdTransformers(NBFULL, MIRROR, NOBORDERS))
import XMonad.Hooks.ManageDocks (ToggleStruts(..))
import Custom.Programs

myKeys :: [(String, X ())]
myKeys = 
    [
        ("M-S-<Return>", spawn myTerminal),
        ("M-b", spawn myBrowser),
        ("M-p", spawn myLauncher),
        ("M-C-<Return>", spawn myFileManager),
        ("M-S-s", spawn "maim -s | tee ~/Pictures/$(date +%s).png | xclip -selection clipboard -t image/png"),
        ("M-<Tab>", sendMessage NextLayout),
        ("M-<Space>", sendMessage (MT.Toggle NBFULL) >> sendMessage ToggleStruts)
    ]
