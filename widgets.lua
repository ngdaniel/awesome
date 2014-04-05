local beautiful = require ("beautiful")

launcher = egregious.widget.launcher()
soundwidget = egregious.widget.soundwidget()
battwidget = egregious.widget.battwidget()
wifiwidget = egregious.widget.wifiwidget()
cpuwidget = egregious.widget.cpuwidget()
datewidget = egregious.widget.datewidget()

seperator = wibox.widget.imagebox()
seperator:set_image(beautiful.separator_icon)



volumewidget = wibox.widget.textbox()
vicious.register(volumewidget, vicious.widgets.volume," Vol: $1% ", 0.3, "Master -c0")


