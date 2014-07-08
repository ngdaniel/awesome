require("beautiful")

--mywibox     = {}
mylayoutbox = {}
mytaglist   = {}
mytasklist  = {}

mytaglist.buttons = awful.util.table.join(

  awful.button({        }, 1, awful.tag.viewonly),
  awful.button({ modkey }, 1, awful.client.movetotag),
  awful.button({        }, 3, awful.tag.viewtoggle),
  awful.button({ modkey }, 3, awful.client.toggletag),
  awful.button({        }, 4, function(t) awful.tag.viewnext(awful.tag.getscreen(t)) end),
  awful.button({        }, 5, function(t) awful.tag.viewprev(awful.tag.getscreen(t)) end)

)

mytasklist.buttons = awful.util.table.join(

  awful.button({}, 4, function ()
    awful.client.focus.byidx(1)
    if client.focus then client.focus:raise() end
  end),
  awful.button({}, 5, function ()
    awful.client.focus.byidx(-1)
    if client.focus then client.focus:raise() end
  end)

)

for s = 1, screen.count() do
  mylayoutbox[s] = awful.widget.layoutbox(s)
  mylayoutbox[s]:buttons(awful.util.table.join(

    awful.button({}, 1, function () awful.layout.inc(layouts,  1) end),
    awful.button({}, 3, function () awful.layout.inc(layouts, -1) end),
    awful.button({}, 4, function () awful.layout.inc(layouts,  1) end),
    awful.button({}, 5, function () awful.layout.inc(layouts, -1) end)

  ))

  mytaglist[s]  = awful.widget.taglist( s, awful.widget.taglist.filter.all, mytaglist.buttons)
  mytasklist[s] = awful.widget.tasklist(s, awful.widget.tasklist.filter.focused, mytasklist.buttons)
  
--mywibox[s] = awful.wibox({position="bottom", height=beautiful.menu_height, 
--  screen=s, border_width=0, border_color=beautiful.bg_focus
--})

  local left_layout = wibox.layout.fixed.horizontal()
  left_layout:add(mytaglist[s])

  local right_layout = wibox.layout.fixed.horizontal({bg=beautiful.bg_focus})
  right_layout:add(mylayoutbox[s])

  local middle_layout = wibox.layout.flex.horizontal()
  middle_layout:add(mytasklist[s])

  local layout = wibox.layout.align.horizontal()
  layout:set_left(left_layout)
  layout:set_middle(middle_layout)
  layout:set_right(right_layout)

--mywibox[s]:set_widget(layout)
end
