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

local battwidget = { mt = {} }

function battwidget.new(args)
    local args = args or {}
    local w = wibox.layout.fixed.horizontal()
    local icon = wibox.widget.imagebox()
    local text = wibox.widget.textbox()
    vicious.register (icon, vicious.widgets.bat, function (widget, args)
        if args[1] == "−"
        then
            icon:set_image(theme.battwidget_discharging_icon)
        else
            icon:set_image(theme.battwidget_icon)
        end
        text:set_markup("" .. args[2])
        return args[2]
    end, 0.2, "BAT0")
    w:add(icon)
    w:add(wibox.layout.margin(text, 3, 3))
    return wibox.layout.margin(w, 4, 4)
end

function battwidget.mt:__call(...)
    return battwidget.new(...)
end

return setmetatable(battwidget, battwidget.mt)
