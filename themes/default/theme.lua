theme = {}

dir					= "~/.config/awesome/themes/default/"
theme.font      			= "Termsynu 11"
theme.wallpaper 			= "~/Pictures/Wallpapers/panda.png"

theme.tasklist_disable_icon 		= true

theme.bg_normal     			= "#141414"
theme.bg_focus      			= "#222222"
theme.bg_urgent				= "#ff0000"
theme.bg_minimize   			= "#22222200"
theme.bg_systray    			= "#00000000"

theme.fg_normal     			= "#888888"
theme.fg_focus      			= "#cccccc"
theme.fg_urgent     			= "#dddddd"
theme.fg_minimize   			= "#666666"

theme.border_width  			= 3
theme.border_normal 			= "#141414"
theme.border_focus  			= "#141414"
theme.border_marked			= "#91231c"

theme.menu_height			= 20
theme.menu_width			= 150
theme.menu_border_width			= 0

theme.taglist_squares_sel   		= dir .. "taglist/squarefw.png"
theme.taglist_squares_unsel 		= dir .. "taglist/squarew.png"

theme.awesome_icon			= dir .. "icons/widgets/awesome.png"
theme.menu_submenu_icon 		= dir .. "submenu.png"

theme.app_icon 				= dir .. "icons/menu/apps.png"
theme.pref_icon 		  	= dir .. "icons/menu/pref.png"

theme.widget_background			= "#090909"

theme.seperator_icon 		  	= dir .. "icons/widgets/seperator.png"
theme.seperator_with_padding_icon 	= dir .. "icons/widgets/seperator_with_padding.png"

theme.batt_charging_icon		= dir .. "icons/widgets/batt_charging.png"  
theme.batt_discharging_icon		= dir .. "icons/widgets/batt_discharging.png"  
theme.batt_color			= "#AECF96"
theme.batt_low_color			= "#DD4940"

theme.cpu_icon				= dir .. "icons/widgets/cpu.png"

theme.wifi_hi_icon			= dir .. "icons/widgets/wifi_hi.png"
theme.wifi_med_icon			= dir .. "icons/widgets/wifi_med.png"
theme.wifi_low_icon			= dir .. "icons/widgets/wifi_low.png"
theme.wifi_no_icon			= dir .. "icons/widgets/wifi_no.png"

theme.titlebar_close_button_normal 	= dir .. "titlebar/close_normal.png"
theme.titlebar_close_button_focus  	= dir .. "titlebar/close_focus.png"

theme.layout_fairh 			= dir .. "layouts/fairh.png"
theme.layout_fairv 			= dir .. "layouts/fairv.png"
theme.layout_floating  			= dir .. "layouts/floating.png"
theme.layout_magnifier 			= dir .. "layouts/magnifier.png"
theme.layout_max 			= dir .. "layouts/max.png"
theme.layout_fullscreen 		= dir .. "layouts/fullscreen.png"
theme.layout_tilebottom 		= dir .. "layouts/tilebottom.png"
theme.layout_tileleft   		= dir .. "layouts/tileleft.png"
theme.layout_tile 			= dir .. "layouts/tileright.png"
theme.layout_tiletop 			= dir .. "layouts/tiletop.png"
theme.layout_spiral  			= dir .. "layouts/spiral.png"
theme.layout_dwindle 			= dir .. "layouts/dwindle.png"

theme.icon_theme 			= "/usr/share/icons/Faenza"

return theme

-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]