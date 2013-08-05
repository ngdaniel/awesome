require("beautiful")

mywibox = {}
mylayoutbox = {}
mytaglist = {}
mytaglist.buttons = awful.util.table.join(
    awful.button({ }, 1, awful.tag.viewonly),
    awful.button({ modkey }, 1, awful.client.movetotag),
    awful.button({ }, 3, awful.tag.viewtoggle),
    awful.button({ modkey }, 3, awful.client.toggletag),
    awful.button({ }, 4, function(t) awful.tag.viewnext(awful.tag.getscreen(t)) end),
    awful.button({ }, 5, function(t) awful.tag.viewprev(awful.tag.getscreen(t)) end)
)
mytasklist = {}
mytasklist.buttons = awful.util.table.join(
    awful.button({ }, 1, function (c)
        if c == client.focus then
            c.minimized = true
        else
	    c.minimized = false 
    	    if not c:isvisible() then
                awful.tag.viewonly(c:tags()[1])
            end
	    client.focus = c
            c:raise()
        end
    end),
    awful.button({ }, 4, function ()
        awful.client.focus.byidx(1)
        if client.focus then client.focus:raise() end
    end),
    awful.button({ }, 5, function ()
        awful.client.focus.byidx(-1)
        if client.focus then client.focus:raise() end
    end))

mylauncher = awful.widget.launcher({ image = beautiful.awesome_icon,
                                     menu = mymainmenu })
for s = 1, screen.count() do
    mylayoutbox[s] = awful.widget.layoutbox(s)
    mylayoutbox[s]:buttons(awful.util.table.join(
        awful.button({ }, 1, function () awful.layout.inc(layouts, 1) end),
	awful.button({ }, 3, function () awful.layout.inc(layouts, -1) end),
	awful.button({ }, 4, function () awful.layout.inc(layouts, 1) end),
	awful.button({ }, 5, function () awful.layout.inc(layouts, -1) end)))
    mytaglist[s] = awful.widget.taglist(s, awful.widget.taglist.filter.all, mytaglist.buttons)
    mytasklist[s] = awful.widget.tasklist(s, awful.widget.tasklist.filter.currenttags, mytasklist.buttons)

    mywibox[s] = awful.wibox({ position = "top", height=beautiful.menu_height, screen = s })

    local left_layout = wibox.layout.fixed.horizontal()
    left_layout:add(mylauncher)
    left_layout:add(seperator)
    left_layout:add(mytaglist[s])
    left_layout:add(seperator)

    local right_layout = wibox.layout.fixed.horizontal()
    
    right_layout:add(seperator)
    right_layout:add(wifiicon)
    right_layout:add(wifiwidget)
    right_layout:add(seperator)
    right_layout:add(datewidget)
    right_layout:add(seperator)
    right_layout:add(mylayoutbox[s])
    right_layout:add(seperator)
    right_layout:add(cpuicon)
    right_layout:add(cpuwidget)
    right_layout:add(seperator)
    right_layout:add(volumeicon)
    right_layout:add(volumewidget)
    right_layout:add(seperator)
    right_layout:add(batticon)
    right_layout:add(battwidget)

    local layout = wibox.layout.align.horizontal()

    layout:set_left(left_layout)
    layout:set_middle(mytasklist[s])
    layout:set_right(right_layout)

    mywibox[s]:set_widget(layout)

end