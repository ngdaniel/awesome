-- LIBARIES
gears = require("gears")
awful = require("awful")
awful.rules = require("awful.rules")
require("awful.autofocus")
wibox = require("wibox")
vicious = require("vicious")
beautiful = require("beautiful")
naughty = require("naughty")
menubar = require("menubar")
egregious = require("egregious")

-- ERROR HANDLING
naughty.config.defaults.border_width = 0
if awesome.startup_errors then
    naughty.notify({ preset = naughty.config.presets.critical,
                     title = "Oops, there were errors during startup!",
                     text = awesome.startup_errors, timeout = 5})
end
do
    local in_error = false
    awesome.connect_signal("debug::error", function (err)
        if in_error then return end
        in_error = true

        naughty.notify({ preset = naughty.config.presets.critical,
                         title = "Oops, an error happened!",
                         text = err, timeout = 5})
        in_error = false
    end)
end

-- GLOBALS
config_dir = awful.util.getdir("config")

-- THEME
beautiful.init(config_dir .. "/themes/misaka/theme.lua")

-- DEFAULTS
terminal = "urxvt"
editor = os.getenv("EDITOR") or "vim"
editor_cmd = terminal .. " -e " .. editor
modkey = "Mod4"

-- WALLPAPER
if beautiful.wallpaper then
    for s = 1, screen.count() do
        gears.wallpaper.maximized(beautiful.wallpaper, s, true)
    end
end

-- TRANSPARENCY
awful.util.spawn_with_shell("compton &")

-- LINK
require("tags")
require("widgets")
require("create")
require("bindings")
require("rules")
