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

local soundwidget = { mt = {} }

local function make_button(args)
    local args = args or {}
    local w = wibox.widget.background()
    local icon = wibox.widget.imagebox()
    w:set_widget(icon)
    w:set_bg(theme.bg_normal)
    icon:set_image(theme.soundwidget_icon)
    return w
end

function soundwidget.new(args)
    local args = args or {}
    local w = wibox.layout.fixed.horizontal()
    local icon = wibox.widget.imagebox()
    local text = wibox.widget.textbox()
    vicious.register (icon, vicious.widgets.volume, function (widget, args)
        icon:set_image(theme.soundwidget_icon)
        text:set_markup(args[1] .. "%")
        return args[1]
    end, 0.2, "Master")
    w:add(icon)
    w:add(wibox.layout.margin(text, 3, 3))
    return wibox.layout.margin(w, 4, 4)
end

function soundwidget.mt:__call(...)
    return soundwidget.new(...)
end

return setmetatable(soundwidget, soundwidget.mt)
