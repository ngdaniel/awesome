vicious = require("vicious")

theme = {}

dir                                     = "~/.config/awesome/themes/twilight/"
size                                    = "14x14"
tag_dir                                 = dir .. "taglist/" .. size .. "/"
layout_dir                              = dir .. "layouts/" .. size .. "/"
widget_dir                              = dir .. "widgets/" .. size .. "/" 

theme.font                              = "Termsyn 11"
theme.wallpaper                         = dir .. "wallpaper.png"
theme.wallpaper_exec =
  function (s)
    gears.wallpaper.set("#1b1b1b")
  end
theme.menu_height                       = 14

theme.tasklist_disable_icon             = true
theme.tasklist_fg_focus                 = "#d2cfc6"

theme.bg_normal                         = "#303030"
theme.bg_focus                          = "#1a1a1a"
theme.bg_widget                         = "#1a1a1a"
theme.bg_urgent                         = "#d08356"
theme.bg_minimize                       = "#00000000"
theme.bg_systray                        = "#00000000"

theme.fg_normal                         = "#d2cfc6"
theme.fg_focus                          = "#d08356"
theme.fg_urgent                         = "#1a1a1a"
theme.fg_minimize                       = "#de463b"

theme.border_width                      = 1
theme.border_normal                     = "#303030"
theme.border_focus                      = "#d08356"
theme.border_marked                     = "#91231c"


theme.taglist_squares_sel               = tag_dir .. "squarefw.png"
theme.taglist_squares_unsel             = tag_dir .. "squarew.png"

theme.awesome_icon                      = widget_dir .. "awesome.png"

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
theme.wifiwidget_icon                   = widget_dir .. "wifi.png"
theme.cpuwidget_icon                    = widget_dir .. "cpu.png"

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
