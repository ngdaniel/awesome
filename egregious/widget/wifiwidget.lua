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

local wifiwidget = { mt = {} }

function wifiwidget.new(args)
    local args = args or {}
    local w = wibox.layout.fixed.horizontal()
    local icon = wibox.widget.imagebox()
    local text = wibox.widget.textbox()
    vicious.register(text, vicious.widgets.wifi, "${ssid}", 5, "wlp3s0")
    icon:set_image(theme.wifiwidget_icon) -- TODO: make replacable
    w:add(icon)
    w:add(wibox.layout.margin(text, 3, 3))
    return wibox.layout.margin(w, 4, 4)
end

function wifiwidget.mt:__call(...)
    return wifiwidget.new(...)
end

return setmetatable(wifiwidget, wifiwidget.mt)
