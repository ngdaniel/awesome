theme = {}

dir                                     = "~/.config/awesome/themes/misaka/"
size                                    = "13x13"
tag_dir                                 = dir .. "taglist/" .. size .. "/"
menu_dir                                = dir .. "icons/menu/" .. size .. "/"
layout_dir                              = dir .. "layouts/" .. size .. "/"
widget_dir                              = dir .. "icons/widgets/" .. size .. "/" 

theme.font                              = "Termsyn 11"
theme.wallpaper                         = "~/Pictures/Wallpapers/misaka.jpg"

theme.menu_height                       = 13

theme.tasklist_disable_icon             = true

theme.bg_normal                         = "#333333"
theme.bg_focus                          = "#141414"
theme.bg_widget                         = "#141414"
theme.bg_urgent                         = "#ff0000"
theme.bg_minimize                       = "#000000"
theme.bg_systray                        = "#000000"

theme.fg_normal                         = "#dfdfdf"
theme.fg_focus                          = "#d46a6f"
theme.fg_urgent                         = "#dddddd"
theme.fg_minimize                       = "#666666"

theme.border_width                      = 1
theme.border_normal                     = "#333333"
theme.border_focus                      = "#d46a6f"
theme.border_marked                     = "#91231c"


theme.taglist_squares_sel               = tag_dir .. "squarefw.png"
theme.taglist_squares_unsel             = tag_dir .. "squarew.png"

theme.awesome_icon                      = widget_dir .. "awesome.png"

theme.app_icon                          = menu_dir .. "apps.png"
theme.pref_icon                         = menu_dir .. "pref.png"

theme.widget_background                 = "#040404"

theme.tasklist_sticky                   = "[s]"
theme.tasklist_ontop                    = "[t]"
theme.tasklist_floating                 = "[f]"
theme.tasklist_maximized_horizontal     = "[mh]"
theme.tasklist_maximized_vertical       = "[mv]"

theme.separator_icon                    = widget_dir .. "separator.png"
theme.battwidget_icon                   = widget_dir .. "batt_charging.png"
theme.battwidget_discharging_icon       = widget_dir .. "batt_discharging.png"
theme.launcher_icon_focus               = widget_dir .. "awesome_focus.png"
theme.launcher_icon                     = widget_dir .. "awesome.png"
theme.launcher_icon_focus               = widget_dir .. "awesome_focus.png"
theme.soundwidget_icon                  = widget_dir .. "sound.png"
theme.soundwidget_icon_focus            = widget_dir .. "sound_focus.png"

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
