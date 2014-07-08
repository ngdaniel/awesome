awful.rules.rules = {{ 
    rule = {},
    properties = { 
      border_width = beautiful.border_width,
      border_color = beautiful.border_normal,
      focus = awful.client.focus.filter,
      keys = clientkeys,
      buttons = clientbuttons,
      size_hints_honor= false }},
  {rule = {class =  "Gimp"}, properties = {floating = true}},
  {rule = {class = "Steam"}, properties = {floating = true}}}

client.connect_signal("manage", 
  function (c, startup)
    c:connect_signal("mouse::enter", 
      function (c)
        if awful.layout.get(c.screen) ~= awful.layout.suit.magnifier
          and awful.client.focus.filter(c) then client.focus = c end
      end)
    if not startup then
      if not c.size_hints.user_position and not c.size_hints.program_position then
        awful.placement.no_overlap(c)
        awful.placement.no_offscreen(c)
      end
    end
    local titlebars_enabled = false
    if titlebars_enabled and (c.type == "normal" or c.type == "dialog") then
      local buttons = awful.util.table.join(
        awful.button({ }, 1, 
          function ()
            client.focus = c
            c:raise()
            awful.mouse.client.move(c)
          end
        ),
        awful.button({ }, 3, 
          function()
            client.focus = c
            c:raise()
            awful.mouse.client.resize(c)
          end))
    end
  end
)

client.connect_signal(  "focus", function(c) c.border_color = beautiful.border_focus end)
client.connect_signal("unfocus", function(c) c.border_color = beautiful.border_normal end)
