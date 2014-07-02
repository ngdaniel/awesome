local capi =
{
    awesome = awesome,
    screen = screen,
    client = client
}
local setmetatable = setmetatable
local error = error
local wibox = require("wibox")
local awful = require("awful")
local beautiful = require("beautiful")

local popup = { mt = {} }

function wibox:show(spawn)
    local s = awful.mouse.screen or 1
    local area = screen[s].geometry 
    if spawn.pivot == "bottom-left" then
        self.x = area.x + spawn.x
        self.y = area.y + area.height - spawn.y - self.height
    elseif spawn.pivot == "bottom-right" then
        self.x = area.x + area.width - spawn.x - self.width
        self.y = area.y + area.height - spawn.y - self.height
    elseif spawn.pivot == "top-left" then
        self.x = area.x + spawn.x
        self.y = area.y + spawn.y
    elseif spawn.pivot == "top-right" then
        self.x = area.x + area.width - spawn.x - self.width
        self.y = area.y + spawn.y
    else
        error("Invalid pivot in egregious.popup(), you may only use"
            .. " 'top-left', 'top-right', 'bottom-left' and 'bottom-right'")
    end
    self.visible = true
end

function wibox:hide()
    self.visible = false
end

function popup.new(arg)
    local arg = arg or {}

    local w = wibox(arg)
    w.visible = false
    w.ontop = true
    return w
end

function popup.mt:__call(...)
    return popup.new(...)
end

return setmetatable(popup, popup.mt)
