require("beautiful")

seperator = wibox.widget.imagebox()
seperator:set_image(beautiful.seperator_icon)

datewidget = wibox.widget.textbox()
vicious.register(datewidget, vicious.widgets.date, "%a %b %d, <span color='".. beautiful.fg_focus .."'>%H:%M</span> ", 30)

batticon = wibox.widget.imagebox()
batticon:set_image(beautiful.batt_charging)
vicious.register(batticon, vicious.widgets.bat,
    function (widget, args)
        if (args[1] == "-") then
	    widget:set_image(beautiful.batt_discharging_icon)
        else
	    widget:set_image(beautiful.batt_charging_icon)
	end
	return ""
    end, 5, "BAT0"
)
 
battwidget = awful.widget.progressbar()
battwidget:set_width(8)
battwidget:set_height(20)
battwidget:set_vertical(true)
battwidget:set_background_color(beautiful.widget_background)
battwidget:set_color(beautiful.batt_color)
vicious.register(battwidget, vicious.widgets.bat,
    function (widget, args)
        if(args[2] > 40) then
	    widget:set_color(beautiful.batt_color)
	else
            widget:set_color(beautiful.batt_low_color)
        end
        return args[2]
    end, 5, "BAT0")

cpuicon = wibox.widget.imagebox()
cpuicon:set_image(beautiful.cpu_icon)

cpuwidget = awful.widget.graph()
cpuwidget:set_width(50)
cpuwidget:set_background_color(beautiful.widget_background)
cpuwidget:set_color("#AECF96")
vicious.register(cpuwidget, vicious.widgets.cpu, "$1", 10, "wlp3s0")

wifiicon = wibox.widget.imagebox()
vicious.register(wifiicon, vicious.widgets.wifi,
    function (widget, args)
        link = args['{link}']
	if link > 60 then
	    widget:set_image(beautiful.wifi_hi_icon)
	elseif link > 30 and link <= 70 then
	    widget:set_image(beautiful.wifi_med_icon)
	elseif link > 0 and link <= 30 then
	    widget:set_image(beautiful.wifi_low_icon)
	else
	    widget:set_image(beautiful.wifi_no_icon)
	end
    end, 10, "wlp3s0")

wifiwidget = wibox.widget.textbox()
vicious.register(wifiwidget, vicious.widgets.wifi, "<span color='".. beautiful.fg_focus .."'>${ssid}</span>", 5, "wlp3s0")
vicious.register(wifiwidget, vicious.widgets.wifi,
    function (widget, args)
        ssid = args['{ssid}']
        if (ssid == "N/A") then
            return "<span color='" .. beautiful.fg_focus .. "'>N/A</span>"
        else
            return "<span color='" .. beautiful.fg_focus .. "'>" .. ssid .. "</span>"
        end
    end,  5, "wlp3s0")

volumeicon = wibox.widget.imagebox()
volumeicon:set_image(beautiful.volume_icon)
vicious.register(volumeicon, vicious.widgets.volume,
    function (widget, args)
        if(args[2] == "♩") then
            widget:set_image(beautiful.volume_mute_icon)
        else
			if args[1] ~= 0 then
            	widget:set_image(beautiful.volume_icon)
			else
            	widget:set_image(beautiful.volume_mute_icon)
			end
        end
    end, 0.5, "Master -c0")

volumewidget = wibox.widget.textbox()
vicious.register(volumewidget, vicious.widgets.volume,
    function (widget, args)
        if(args[2] == "♩") then
            return "mute"
        end
        return "<span color='" .. beautiful.fg_focus .. "'>" .. args[1] .. "%</span>"
    end, 0.5, "Master -c0")
