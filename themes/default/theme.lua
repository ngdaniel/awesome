theme = {}

dir                                     = "~/.config/awesome/themes/default/"
size                                    = "16x16"
tag_dir                                 = dir .. "taglist/" .. size .. "/"
menu_dir                                = dir .. "icons/menu/" .. size .. "/"
layout_dir				= dir .. "layouts/" .. size .. "/"
widget_dir                              = dir .. "icons/widgets/" .. size .. "/" 

theme.font                              = "Termsynu 11"
theme.wallpaper                         = "~/Pictures/Wallpapers/hill.jpg"

theme.tasklist_disable_icon             = true

theme.bg_normal                         = "#242424"
theme.bg_focus                          = "#444444"
theme.bg_urgent                         = "#ff0000"
theme.bg_minimize                       = "#00000000"
theme.bg_systray                        = "#00000000"

theme.fg_normal                         = "#888888"
theme.fg_focus                          = "#cccccc"
theme.fg_urgent                         = "#dddddd"
theme.fg_minimize                       = "#666666"

theme.border_width                      = 1
theme.border_normal                     = "#242424"
theme.border_focus                      = "#444444"
theme.border_marked                     = "#91231c"

theme.menu_height                       = 16
theme.menu_width                        = 150
theme.menu_border_width                 = 0
theme.menu_bg_normal                    = theme.bg_normal
theme.menu_bg_focus                     = theme.bg_focus 

theme.menu_submenu_icon                 = dir .. "submenu" .. size .. ".png"

theme.taglist_squares_sel               = tag_dir .. "squarefw.png"
theme.taglist_squares_unsel             = tag_dir .. "squarew.png"

theme.awesome_icon                      = widget_dir .. "awesome.png"

theme.app_icon                          = menu_dir .. "apps.png"
theme.pref_icon                         = menu_dir .. "pref.png"

theme.widget_background                 = "#141414"

theme.seperator_icon                    = widget_dir .. "seperator.png"

theme.batt_charging_icon                = widget_dir .. "batt_charging.png"  
theme.batt_discharging_icon             = widget_dir .. "batt_discharging.png"  
theme.batt_color                        = "#AECF96"
theme.batt_low_color                    = "#DD4940"

theme.cpu_icon                          = widget_dir .. "cpu.png"

theme.wifi_hi_icon                      = widget_dir .. "wifi_hi.png"
theme.wifi_med_icon                     = widget_dir .. "wifi_med.png"
theme.wifi_low_icon                     = widget_dir .. "wifi_low.png"
theme.wifi_no_icon                      = widget_dir .. "wifi_no.png"

theme.volume_icon                       = widget_dir .. "volume.png"
theme.volume_mute_icon                  = widget_dir .. "volume_mute.png"

theme.titlebar_close_button_normal      = dir .. "titlebar/close_normal.png"
theme.titlebar_close_button_focus       = dir .. "titlebar/close_focus.png"

theme.tasklist_sticky                   = "[s]"
theme.tasklist_ontop                    = "[s]"
theme.tasklist_floating                 = "[f]"
theme.tasklist_maximized_horizontal     = "[mh]"
theme.tasklist_maximized_vertical       = "[mv]"

theme.layout_fairh                      = layout_dir .. "fairh.png"
theme.layout_fairv                      = layout_dir .. "fairv.png"
theme.layout_floating                   = layout_dir .. "floating.png"
theme.layout_magnifier                  = layout_dir .. "magnifier.png"
theme.layout_max                        = layout_dir .. "max.png"
theme.layout_fullscreen                 = layout_dir .. "fullscreen.png"
theme.layout_tilebottom                 = layout_dir .. "tilebottom.png"
theme.layout_tileleft                   = layout_dir .. "tileleft.png"
theme.layout_tile                       = layout_dir .. "tileright.png"
theme.layout_tiletop                    = layout_dir .. "tiletop.png"
theme.layout_spiral                     = layout_dir .. "spiral.png"
theme.layout_dwindle                    = layout_dir .. "dwindle.png"

theme.icon_theme                        = "/usr/share/icons/Faenza"

return theme

-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
