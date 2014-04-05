beautiful = require ("beautiful")

root.buttons(awful.util.table.join(
  awful.button({ }, 4, awful.tag.viewnext),
  awful.button({ }, 5, awful.tag.viewprev)))

local function focusMouse() 
  client.focus:raise() 
  mouse.coords(client.focus:geometry())
end
globalkeys = awful.util.table.join(

-- window selection
  awful.key({ modkey,           }, "j", function () awful.client.focus.byidx( 1) if client.focus then focusMouse() end end),
  awful.key({ modkey,           }, "k", function () awful.client.focus.byidx(-1) if client.focus then focusMouse() end end),

-- layout manipulation
  awful.key({ modkey,           }, "space", function () awful.layout.inc(layouts,  1) end),
  awful.key({ modkey, "Shift"   }, "space", function () awful.layout.inc(layouts, -1) end),
  awful.key({ modkey, "Shift"   }, "j", function () awful.client.swap.byidx(1) focusMouse() end),
  awful.key({ modkey, "Control" }, "j", function () awful.screen.focus_relative(1) focusMouse() end),
  awful.key({ modkey, "Shift"   }, "k", function () awful.client.swap.byidx(-1) focusMouse() end),
  awful.key({ modkey, "Control" }, "k", function () awful.screen.focus_relative(-1) focusMouse() end),
  awful.key({ modkey,           }, "o", function () awful.screen.focus(1) end),
  awful.key({ modkey,           }, "p", function () awful.screen.focus(2) end),
  awful.key({ modkey, "Shift"   }, "o", function () awful.client.movetoscreen(c, 1) end),
  awful.key({ modkey, "Shift"   }, "p", function () awful.client.movetoscreen(c, 2) end),
  awful.key({ modkey,           }, "h", function () awful.tag.incmwfact(-0.05)       end),
  awful.key({ modkey,           }, "l", function () awful.tag.incmwfact(0.05)        end),
  awful.key({ modkey,           }, ",", function () awful.tag.incnmaster( 1)        end),
  awful.key({ modkey,           }, ".", function () awful.tag.incnmaster(-1)        end),

-- standard program
  awful.key({ modkey, "Control" }, "r", function () awesome.restart() end),
  awful.key({ modkey, "Shift", "Control" }, "Escape", awesome.quit),

-- change layout
  awful.key({ modkey,           }, "F1",    function () awful.layout.set(awful.layout.suit.tile.right) end),
  awful.key({ modkey, "Shift",  }, "F1",    function () awful.layout.set(awful.layout.suit.tile.top) end),
  awful.key({ modkey,           }, "F2",    function () awful.layout.set(awful.layout.suit.max) end),
  awful.key({ modkey,  "Shift", }, "F2",    function () awful.layout.set(awful.layout.suit.magnifier) end),
  awful.key({ modkey,           }, "F3",    function () awful.layout.set(awful.layout.suit.floating) end),
  awful.key({ modkey            }, "b", 
    function () 
      mywibox[mouse.screen].visible = not mywibox[mouse.screen].visible
      awful.layout.arrange(mouse.screen)
    end),

-- prompt
  awful.key({ modkey,           }, "e", 
    function() 
      if mywibox[mouse.screen].visible then launcher.show() else launcher.show() end
    end),

-- applications
  awful.key({ modkey,           }, "Return", function () awful.util.spawn(terminal) end)
)

-- client manipulation
clientkeys = awful.util.table.join(
  awful.key({ modkey,           }, "f",      function (c) c.fullscreen = not c.fullscreen  end),
  awful.key({ modkey, "Shift"   }, "c",      function (c) c:kill()                         end),
  awful.key({ modkey, "Control" }, "space",  awful.client.floating.toggle                     ),
  awful.key({ modkey, "Control" }, "Return", function (c) c:swap(awful.client.getmaster()) end),
  awful.key({ modkey,           }, "o",      awful.client.movetoscreen                        ),
  awful.key({ modkey,           }, "t",      function (c) c.ontop = not c.ontop            end),
  awful.key({ modkey,           }, "m",
    function (c)
      c.maximized_horizontal = not c.maximized_horizontal
      c.maximized_vertical   = not c.maximized_vertical
    end)
)

for i = 1, 9 do
  globalkeys = awful.util.table.join(globalkeys,
    awful.key({ modkey }, "#" .. i + 9,
      function ()
        local screen = mouse.screen
        local tag = awful.tag.gettags(screen)[i]
        if tag then awful.tag.viewonly(tag) end
      end),
    awful.key({ modkey, "Control" }, "#" .. i + 9,
      function ()
        local screen = mouse.screen
        local tag = awful.tag.gettags(screen)[i]
        if tag then awful.tag.viewtoggle(tag) end
      end),
    awful.key({ modkey, "Shift" }, "#" .. i + 9,
      function ()
        local tag = awful.tag.gettags(client.focus.screen)[i]
        if client.focus and tag then awful.client.movetotag(tag) end
      end),
    awful.key({ modkey, "Control", "Shift" }, "#" .. i + 9,
      function ()
        local tag = awful.tag.gettags(client.focus.screen)[i]
        if client.focus and tag then awful.client.toggletag(tag) end
      end))
end

clientbuttons = awful.util.table.join(
  awful.button({        }, 1, function (c) client.focus = c; c:raise() end),
  awful.button({ modkey }, 1, awful.mouse.client.move),
  awful.button({ modkey }, 3, awful.mouse.client.resize))
-- set keys
root.keys(globalkeys)
