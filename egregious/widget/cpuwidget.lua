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

local cpuwidget = { mt = {} }

function cpuwidget.new(args)
    local args = args or {}
    local w = wibox.layout.fixed.horizontal()
    local icon = wibox.widget.imagebox()
    local text = wibox.widget.textbox()
    vicious.register(text, vicious.widgets.cpu, "$1", 10)
    icon:set_image(theme.cpuwidget_icon) -- TODO: make replacable
    w:add(icon)
    w:add(wibox.layout.margin(text, 3, 3))
    return wibox.layout.margin(w, 4, 4)
end

function cpuwidget.mt:__call(...)
    return cpuwidget.new(...)
end

return setmetatable(cpuwidget, cpuwidget.mt)
