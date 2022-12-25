import XMonad
import XMonad.Config.Kde
import qualified XMonad.StackSet as W -- to shift and float windows

import XMonad
import XMonad.Config.Kde
import qualified XMonad.StackSet as W -- to shift and float windows

main = xmonad kdeConfig
    { modMask = mod4Mask -- use the Windows button as mod
    , manageHook = manageHook kdeConfig <+> myManageHook
    , terminal = "alacritty" 
    }

myManageHook = composeAll . concat $
    [ [ className   =? c --> doFloat           | c <- myFloats]
    ]
  where myFloats = ["yakuake","Yakuake","Kmix","kmix","plasma","Plasma","plasma-desktop","Plasma-desktop","krunner","ksplashsimple","ksplashqml","ksplashx","xprops","latte-dock","lattedock", "plasmashell", "krunner"]

