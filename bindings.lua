beautiful = require ("beautiful")

dmenu_prompt = "dmenu_run -y ".. beautiful.menu_height .." -fn 'Termsynu-11' -h ".. beautiful.menu_height .." -nb '".. beautiful.bg_focus .. "' -nf '".. beautiful.fg_normal .."' -sb '".. beautiful.bg_focus .."' -sf '".. beautiful.fg_focus .."'"

dmenu_prompt_hidden = "dmenu_run -y 0 -fn 'Termsynu-11' -h ".. beautiful.menu_height .." -nb '".. beautiful.bg_focus .. "' -nf '".. beautiful.fg_normal .."' -sb '".. beautiful.bg_focus .."' -sf '".. beautiful.fg_focus .."'"

root.buttons(awful.util.table.join(
    awful.button({ }, 4, awful.tag.viewnext),
    awful.button({ }, 5, awful.tag.viewprev)
))

globalkeys = awful.util.table.join(
    
    -- Window selection
    awful.key({ modkey,           }, "j",
        function ()
            awful.client.focus.byidx( 1)
            if client.focus then client.focus:raise() end
        end),
    awful.key({ modkey,           }, "k",
        function ()
            awful.client.focus.byidx(-1)
            if client.focus then client.focus:raise() end
        end),

    -- Layout manipulation
    awful.key({ modkey,           }, "space", function () awful.layout.inc(layouts,  1) end),
    awful.key({ modkey, "Shift"   }, "space", function () awful.layout.inc(layouts, -1) end),
    awful.key({ modkey, "Shift"   }, "j", function () awful.client.swap.byidx(  1)    end),
    awful.key({ modkey, "Control" }, "j", function () awful.screen.focus_relative( 1) end),
    awful.key({ modkey, "Shift"   }, "k", function () awful.client.swap.byidx( -1)    end),
    awful.key({ modkey, "Control" }, "k", function () awful.screen.focus_relative(-1) end),
    awful.key({ modkey,           }, "h", function () awful.tag.incmwfact(-0.05)       end),
    awful.key({ modkey,           }, "l", function () awful.tag.incmwfact(0.05)        end),
    awful.key({ modkey,           }, ",", function () awful.tag.incnmaster( 1)        end),
    awful.key({ modkey,           }, ".", function () awful.tag.incnmaster(-1)        end),
    -- Standard program
    awful.key({ modkey, "Control" }, "r", function ()
        --awful.util.spawn_with_shell("killall compton")
        awesome.restart()
    end),
    awful.key({ modkey, "Shift", "Control" }, "Escape", awesome.quit),

    -- Change layout
    awful.key({ modkey,                    }, "F1",    function () awful.layout.set(awful.layout.suit.tile.right) end),
    awful.key({ modkey, "Shift",           }, "F1",    function () awful.layout.set(awful.layout.suit.tile.top) end),
    awful.key({ modkey,                    }, "F2",    function () awful.layout.set(awful.layout.suit.max) end),
    awful.key({ modkey, "Shift",           }, "F2",    function () awful.layout.set(awful.layout.suit.max.fullscreen) end),
    awful.key({ modkey,                    }, "F3",    function () awful.layout.set(awful.layout.suit.fair) end),
    awful.key({ modkey, "Shift",           }, "F3",    function () awful.layout.set(awful.layout.suit.fair.horizontal) end),
    awful.key({ modkey,                    }, "F4",    function () awful.layout.set(awful.layout.suit.floating) end),
    awful.key({ modkey, "Shift",           }, "F4",    function () awful.layout.set(awful.layout.suit.magnifier) end),

    --awful.key({ modkey, "Control"          }, "n", awful.client.restore),
    awful.key({ modkey }, "b", function ()
        mywibox[mouse.screen].visible = not mywibox[mouse.screen].visible
		awful.layout.arrange(mouse.screen)
    end),

    -- System
	awful.key({                   }, "XF86AudioRaiseVolume", function() awful.util.spawn("pamixer --increase 1") awful.util.spawn("pamixer --unmute") end),
	awful.key({                   }, "XF86AudioLowerVolume", function() awful.util.spawn("pamixer --decrease 1") awful.util.spawn("pamixer --unmute") end),
	awful.key({         "Shift"   }, "XF86AudioRaiseVolume", function() awful.util.spawn("pamixer --increase 5") awful.util.spawn("pamixer --unmute") end),
	awful.key({         "Shift"   }, "XF86AudioLowerVolume", function() awful.util.spawn("pamixer --decrease 5") awful.util.spawn("pamixer --unmute") end),
	awful.key({                   }, "XF86AudioMute", function() awful.util.spawn("pamixer --toggle-mute") end),
	awful.key({                   }, "XF86MonBrightnessUp", function() awful.util.spawn("xbacklight -inc 10") end),
	awful.key({                   }, "XF86MonBrightnessDown", function() awful.util.spawn("xbacklight -dec 10") end),


    -- Make everything ultra minimal:
    awful.key({ modkey }, "Escape", function ()
        awful.util.spawn_with_shell("killall conky")
        awful.util.spawn_with_shell("xsetroot -solid black")
        awful.util.spawn_with_shell("killall compton")
    end),

    -- dmenu prompt
    awful.key({ modkey,           }, "e",
        function () 
            if mywibox[mouse.screen].visible then
                awful.util.spawn(dmenu_prompt)
            else
                awful.util.spawn(dmenu_prompt_hidden);
            end
        end),

    -- Applications
    awful.key({ modkey,           }, "Return", function () awful.util.spawn(terminal) end),
    awful.key({ modkey,           }, "v", function () awful.util.spawn(terminal .. " -e vim") end),
    awful.key({ modkey,           }, "r", function () awful.util.spawn(terminal .. " -e ranger") end),
    awful.key({ modkey,           }, "g", function () awful.util.spawn("google-chrome") end)
)

clientkeys = awful.util.table.join(
    awful.key({ modkey, "Shift"   }, "f",      function (c) c.fullscreen = not c.fullscreen  end),
    awful.key({ modkey, "Shift"   }, "c",      function (c) c:kill()                         end),
    awful.key({ modkey, "Control" }, "space",  awful.client.floating.toggle                     ),
    awful.key({ modkey, "Control" }, "Return", function (c) c:swap(awful.client.getmaster()) end),
    awful.key({ modkey,           }, "o",      awful.client.movetoscreen                        ),
    awful.key({ modkey,           }, "t",      function (c) c.ontop = not c.ontop            end),
    awful.key({ modkey,           }, "n",
        function (c)
            c.minimized = true
        end),
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
                        if tag then
                           awful.tag.viewonly(tag)
                        end
                  end),
        awful.key({ modkey, "Control" }, "#" .. i + 9,
                  function ()
                      local screen = mouse.screen
                      local tag = awful.tag.gettags(screen)[i]
                      if tag then
                         awful.tag.viewtoggle(tag)
                      end
                  end),
        awful.key({ modkey, "Shift" }, "#" .. i + 9,
                  function ()
                      local tag = awful.tag.gettags(client.focus.screen)[i]
                      if client.focus and tag then
                          awful.client.movetotag(tag)
                     end
                  end),
        awful.key({ modkey, "Control", "Shift" }, "#" .. i + 9,
                  function ()
                      local tag = awful.tag.gettags(client.focus.screen)[i]
                      if client.focus and tag then
                          awful.client.toggletag(tag)
                      end
                  end))
end

clientbuttons = awful.util.table.join(
    awful.button({ }, 1, function (c) client.focus = c; c:raise() end),
    awful.button({ modkey }, 1, awful.mouse.client.move),
    awful.button({ modkey }, 3, awful.mouse.client.resize))


-- Set keys
root.keys(globalkeys)
-- }}}
