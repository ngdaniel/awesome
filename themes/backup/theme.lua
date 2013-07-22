---------------------------
-- Default awesome theme --
---------------------------

theme = {}

theme.font          = "Termsyn 10"
theme.wallpaper = "~/Pictures/Wallpapers/daftpunk.jpg"

theme.tasklist_disable_icon = true

theme.bg_normal     = "#111111"
theme.bg_focus      = "#222222"
theme.bg_urgent     = "#ff0000"
theme.bg_minimize   = "#22222200"
theme.bg_systray    = "#00000000"

theme.fg_normal     = "#dddddd"
theme.fg_focus      = "#ffffff"
theme.fg_urgent     = "#dddddd"
theme.fg_minimize   = "#dddddd"

theme.border_width  = 1
theme.border_normal = "#000000"
theme.border_focus  = "#ffffff"
theme.border_marked = "#91231c"

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Display the taglist squares
theme.taglist_squares_sel   = "~/.config/awesome/themes/default/taglist/squarefw.png"
theme.taglist_squares_unsel = "~/.config/awesome/themes/default/taglist/squarew.png"

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]

theme.menu_submenu_icon = "~/.config/awesome/themes/default/submenu.png"
theme.menu_height = 15
theme.menu_width  = 150
theme.menu_border_width=0

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = "~/.config/awesome/themes/default/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = "~/.config/awesome/themes/default/titlebar/close_focus.png"

--theme.titlebar_ontop_button_normal_inactive = "~/.config/awesome/default/titlebar/ontop_normal_inactive.png"
--theme.titlebar_ontop_button_focus_inactive  = "~/.config/awesome/themes/default/titlebar/ontop_focus_inactive.png"
--theme.titlebar_ontop_button_normal_active = "~/.config/awesome/themes/default/titlebar/ontop_normal_active.png"
--theme.titlebar_ontop_button_focus_active  = "~/.config/awesome/themes/default/titlebar/ontop_focus_active.png"

--theme.titlebar_sticky_button_normal_inactive = "~/.config/awesome/themes/default/titlebar/sticky_normal_inactive.png"
--theme.titlebar_sticky_button_focus_inactive  = "~/.config/awesome/themes/default/titlebar/sticky_focus_inactive.png"
--theme.titlebar_sticky_button_normal_active = "~/.config/awesome/themes/default/titlebar/sticky_normal_active.png"
--theme.titlebar_sticky_button_focus_active  = "~/.config/awesome/themes/default/titlebar/sticky_focus_active.png"

--theme.titlebar_floating_button_normal_inactive = "~/.config/awesome/themes/default/titlebar/floating_normal_inactive.png"
--theme.titlebar_floating_button_focus_inactive  = "~/.config/awesome/themes/default/titlebar/floating_focus_inactive.png"
--theme.titlebar_floating_button_normal_active = "~/.config/awesome/themes/default/titlebar/floating_normal_active.png"
--theme.titlebar_floating_button_focus_active  = "~/.config/awesome/themes/default/titlebar/floating_focus_active.png"

--theme.titlebar_maximized_button_normal_inactive = "~/.config/awesome/themes/default/titlebar/maximized_normal_inactive.png"
--theme.titlebar_maximized_button_focus_inactive  = "~/.config/awesome/themes/default/titlebar/maximized_focus_inactive.png"
--theme.titlebar_maximized_button_normal_active = "~/.config/awesome/themes/default/titlebar/maximized_normal_active.png"
--ztheme.titlebar_maximized_button_focus_active  = "~/.config/awesome/themes/default/titlebar/maximized_focus_active.png"

-- You can use your own layout icons like this:
theme.layout_fairh = "~/.config/awesome/themes/default/newlayouts/fairh.png"
theme.layout_fairv = "~/.config/awesome/themes/default/newlayouts/fairv.png"
theme.layout_floating  = "~/.config/awesome/themes/default/newlayouts/floating.png"
theme.layout_magnifier = "~/.config/awesome/themes/default/newlayouts/magnifier.png"
theme.layout_max = "~/.config/awesome/themes/default/newlayouts/max.png"
theme.layout_fullscreen = "~/.config/awesome/themes/default/newlayouts/fullscreen.png"
theme.layout_tilebottom = "~/.config/awesome/themes/default/newlayouts/tilebottom.png"
theme.layout_tileleft   = "~/.config/awesome/themes/default/newlayouts/tileleft.png"
theme.layout_tile = "~/.config/awesome/themes/default/newlayouts/tileright.png"
theme.layout_tiletop = "~/.config/awesome/themes/default/newlayouts/tiletop.png"
theme.layout_spiral  = "~/.config/awesome/themes/default/newlayouts/spiral.png"
theme.layout_dwindle = "~/.config/awesome/themes/default/newlayouts/dwindle.png"

theme.awesome_icon = "~/.config/awesome/icons/awesome16.png"
theme.app_icon = "~/.config/awesome/themes/default/icons/apps.png"
theme.pref_icon = "~/.config/awesome/themes/default/icons/pref.png"

-- Define the icon theme for application icons. If not set then the icons 
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme
-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
