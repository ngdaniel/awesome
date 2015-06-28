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

local weatherwidget = { mt = {} }

local function script_output()
    return { string.gsub(awful.util.pread("/home/daniel/scripts/weather.sh"), '&', '&amp;') }
end

function weatherwidget.new(args)
    local args = args or {}
    local w = wibox.layout.fixed.horizontal()
    local icon = wibox.widget.imagebox()
    local text = wibox.widget.textbox()
    vicious.register(text, script_output, "$1", 120)
    icon:set_image(theme.weatherwidget_icon)
    w:add(icon)
    w:add(wibox.layout.margin(text, 3, 3))
    return wibox.layout.margin(w, 4, 4)
end

function weatherwidget.mt:__call(...)
    return weatherwidget.new(...)
end

return setmetatable(weatherwidget, weatherwidget.mt)
