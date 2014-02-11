local beautiful = require ("beautiful")

launcher = egregious.widget.launcher()
soundwidget = egregious.widget.soundwidget()
battwidget = egregious.widget.battwidget()

seperator = wibox.widget.imagebox()
seperator:set_image(beautiful.separator_icon)

datewidget = wibox.widget.textbox()
vicious.register(datewidget, vicious.widgets.date, " %a %b %d, %H:%M ", 30)


volumewidget = wibox.widget.textbox()
vicious.register(volumewidget, vicious.widgets.volume," Vol: $1% ", 0.3, "Master -c0")

cpuwidget = wibox.widget.textbox()
vicious.register(cpuwidget, vicious.widgets.cpu, " CPU: $1% ", 10)

wifiwidget = wibox.widget.textbox()
vicious.register(wifiwidget, vicious.widgets.wifi, " Wifi: ${ssid} Li: ${link} Si: ${sign} ", 5, "wlp3s0")

