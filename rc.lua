-- libaries
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

-- error handling
naughty.config.defaults.border_width = 1
naughty.config.defaults.border_color = "#de463b"
if awesome.startup_errors 
then
  naughty.notify(
    { 
      title = "Oops, there were errors during startup!",
      text = awesome.startup_errors, timeout = 5
    })
end
local in_error = false
awesome.connect_signal("debug::error", 
  function (err)
    if in_error then return end
    in_error = true
    naughty.notify(
      { 
        title = "Oops, an error happened!",
        text = err, timeout = 5
      })
    in_error = false
  end)

-- globals
config_dir = awful.util.getdir("config")

-- theme
beautiful.init(config_dir .. "/themes/default/theme.lua")

-- defaults
terminal   = "urxvt"
editor     = os.getenv("EDITOR") or "vim"
editor_cmd = terminal .. " -e " .. editor
modkey     = "Mod4"

-- wallpaper
if beautiful.wallpaper then
  for s = 1, screen.count() 
  do
    if beautiful.wallpaper_exec ~= nil
    then
      beautiful.wallpaper_exec(s)
    else
      gears.wallpaper.maximized(beautiful.wallpaper, s, true)
    end
  end
end

-- transparency
awful.util.spawn_with_shell("compton &")

-- link
require("tags")
require("widgets")
require("create")
require("bindings")
require("rules")
