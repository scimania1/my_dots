module Custom.Layouts where

import Custom.Decorations
import XMonad
import XMonad.Actions.MouseResize
import XMonad.Hooks.ManageDocks
import XMonad.Layout.Accordion
import XMonad.Layout.Fullscreen
import XMonad.Layout.NoBorders
import XMonad.Layout.MultiToggle
import XMonad.Layout.MultiToggle.Instances
import XMonad.Layout.Renamed
import XMonad.Layout.ResizableTile
import XMonad.Layout.ShowWName
import XMonad.Layout.SimplestFloat
import XMonad.Layout.Tabbed
import XMonad.Layout.ThreeColumns
import XMonad.Layout.ToggleLayouts as XLT
import XMonad.Layout.SubLayouts
import XMonad.Layout.Spacing
import XMonad.Layout.WindowArranger

mySpacing i = spacingRaw False (Border i i i i) True (Border i i i i) True

tall =
    renamed [Replace "Tall"]
    $ addTabs shrinkText myTabConfig
    $ subLayout [] tabs
    $ mySpacing 3
    $ ResizableTall 1 (3/100) (1/2) []

tabs =
    renamed [Replace "Tabs"]
    $ tabbed shrinkText myTabConfig

threeCol =
    renamed [Replace "threeCol"]
    $ addTabs shrinkText myTabConfig
    $ subLayout [] tabs
    $ ThreeCol 1 (3/100) (1/2)

floats = 
    renamed [Replace "floats"]
    $ noBorders simplestFloat

full =
    renamed [Replace "Full"]
    $ noBorders Full

myLayout = withBorder myBorderWidth tall ||| full ||| threeCol

myLayoutHook =
    avoidStruts
    $ showWName' myShowWNameConfig
    $ mouseResize
    $ windowArrange
    $ XLT.toggleLayouts floats
    $ mkToggle (NBFULL ?? NOBORDERS ?? EOT) myLayout
