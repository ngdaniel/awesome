require("beautiful")

seperator = wibox.widget.imagebox()
seperator:set_image(beautiful.seperator_icon)

datewidget = wibox.widget.textbox()
vicious.register(datewidget, vicious.widgets.date, " %a %b %d, %H:%M ", 60)

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
    end, 1, "BAT0"
)
 
battwidget = awful.widget.progressbar()
battwidget:set_width(8)
battwidget:set_height(20)
battwidget:set_vertical(true)
battwidget:set_background_color(beautiful.widget_background)
battwidget:set_color(beautiful.batt_color)
vicious.register(battwidget, vicious.widgets.bat,
    function (widget, args)
        if(args[2] > 30) then
	    widget:set_color(beautiful.batt_color)
	else
            widget:set_color(beautiful.batt_low_color)
        end
        return args[2]
    end, 1, "BAT0")

cpuicon = wibox.widget.imagebox()
cpuicon:set_image(beautiful.cpu_icon)

cpuwidget = awful.widget.graph()
cpuwidget:set_width(50)
cpuwidget:set_background_color(beautiful.widget_background)
cpuwidget:set_color("#AECF96")
vicious.register(cpuwidget, vicious.widgets.cpu, "$1")

wifiicon = wibox.widget.imagebox()
vicious.register(wifiicon, vicious.widgets.wifi,
    function (widget, args)
        link = args['{link}']
	if link > 70 then
	    widget:set_image(beautiful.wifi_hi_icon)
	elseif link > 30 and link <= 70 then
	    widget:set_image(beautiful.wifi_med_icon)
	elseif link > 0 and link <= 30 then
	    widget:set_image(beautiful.wifi_low_icon)
	else
	    widget:set_image(beautiful.widget_wifi_no)
	end
    end, 3, "wlp3s0")

wifiwidget = wibox.widget.textbox()
vicious.register(wifiwidget, vicious.widgets.wifi, "${ssid}", 3, "wlp3s0")