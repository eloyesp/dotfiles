import XMonad
import XMonad.Layout.NoBorders
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.ManageDocks

myLayout = avoidStruts $ -- leave space for docks (from ManageDocks)
           smartBorders $ -- from NoBorders
           layoutHook defaultConfig

myManageHook = manageHook defaultConfig
  <+> manageDocks         -- add support for Docks (from ManageDocks)

myHandleEventHook = handleEventHook defaultConfig
  <+> fullscreenEventHook -- add support for applications trying to max
                          -- themselves (from EwmhDesktops)
  <+> docksEventHook      -- add docks inmediately (from ManageDocks)

-- myKeys conf@(XConfig {XMonad.modMask = modMask}) = M.fromList $
-- [ ((modMask, xK_u), spawn "dm-tool switch-to-greeter")
-- ]

-- add ewmh support to the config
main = xmonad $ ewmh defaultConfig
         { modMask         = mod4Mask -- use Winkey
         , layoutHook      = myLayout
         , handleEventHook = myHandleEventHook
         , terminal        = "xterm"
         } -- `additionalKeys` myKeys
