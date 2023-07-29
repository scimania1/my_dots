module Custom.Decorations where

import Colors.Nightfox
import XMonad qualified
import XMonad.Layout.ShowWName
import XMonad.Layout.Tabbed

myFont :: String
myFont = "xft:FiraCode Nerd Font:size=9:antialias=true:hinting=true"

myBorderWidth :: XMonad.Dimension
myBorderWidth = 2

myNormalBorderColor :: String
myNormalBorderColor = color4

myFocusedBorderColor :: String
myFocusedBorderColor = color3

myShowWNameConfig :: SWNConfig
myShowWNameConfig =
    def
    {
        swn_font = "xft:FiraCode Nerd Font:size=60:antialias=true:hinting=true",
        swn_color = color4,
        swn_bgcolor = color2,
        swn_fade = 0.5
    }

myTabConfig :: Theme
myTabConfig = 
    def
    {
        fontName = myFont,
        activeColor = color0,
        inactiveColor = color2,
        urgentColor = color11,
        activeBorderColor = color6,
        inactiveBorderColor = color9,
        urgentBorderColor = color4,
        activeTextColor = color16,
        inactiveTextColor = color1,
        urgentTextColor = color5
    }
