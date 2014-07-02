local capi =
{
    awesome = awesome,
    screen = screen,
    client = client
}
local wibox = require("wibox")
local theme = require("beautiful")
local awful = require("awful")
local vicious = require("vicious")

local datewidget = { mt = {} }

function datewidget.new(args)
    local args = args or {}
    local w = wibox.layout.fixed.horizontal()
    local icon = wibox.widget.imagebox()
    local text = wibox.widget.textbox()
    vicious.register(text, vicious.widgets.date, "%a %b %d, %H:%M", 30)
    icon:set_image(theme.datewidget_icon) -- TODO: make replacable
    w:add(icon)
    w:add(wibox.layout.margin(text, 3, 3))
    return wibox.layout.margin(w, 4, 4)
end

function datewidget.mt:__call(...)
    return datewidget.new(...)
end

return setmetatable(datewidget, datewidget.mt)
