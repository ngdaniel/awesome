-- libaries
gears = require("gears")
awful = require("awful")
awful.rules = require("awful.rules")
wibox = require("wibox")
vicious = require("vicious")
beautiful = require("beautiful")
naughty = require("naughty")
menubar = require("menubar")
egregious = require("egregious")

-- globals
config_dir = awful.util.getdir("config")

-- theme
beautiful.init(config_dir .. "/themes/twilight/theme.lua")

-- defaults
terminal   = "urxvt"
editor     = os.getenv("EDITOR") or "vim"
editor_cmd = terminal .. " -e " .. editor
modkey     = "Mod4"

-- wallpaper
if beautiful.wallpaper then
  for s = 1, screen.count() do
    gears.wallpaper.maximized(beautiful.wallpaper, s, true)
  end
end

-- link
require("tags")
require("widgets")
require("create")
require("bindings")
require("client")
