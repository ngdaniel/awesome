seperator = wibox.widget.textbox()
seperator:set_text(" | ");

datewidget = wibox.widget.textbox()
vicious.register(datewidget, vicious.widgets.date, " %a %b %d, %H:%M ", 60)

battwidgettext = wibox.widget.textbox()
vicious.register(battwidgettext, vicious.widgets.bat,
	function (widget, args)
		if args[2] == 0 then return "Battery derped" end
        text = args[3]
        if (args[1] == "-") then
	    return "[-]BATT "
        else
	    return "[+]BATT "
	end
	end, 1, "BAT0"
)
 
battwidget = awful.widget.progressbar()
battwidget:set_width(8)
battwidget:set_height(10)
battwidget:set_vertical(true)
battwidget:set_background_color("#494B4F")
battwidget:set_color("#AECF96")
vicious.register(battwidget, vicious.widgets.bat, "$2", 1, "BAT0")

cpuwidget = awful.widget.graph()
cpuwidget:set_width(50)
cpuwidget:set_background_color("#494B4F")
cpuwidget:set_color({ type = "linear", from = { 0, 0 }, to = { 10,0 }, stops = { {0, "#FF5656"}, {0.5, "#88A175"}, 
                    {1, "#AECF96" }}})
vicious.register(cpuwidget, vicious.widgets.cpu, "$1")

wifiwidget = wibox.widget.textbox()
vicious.register(wifiwidget, vicious.widgets.wifi, " ${ssid}", 3, "wlp3s0")