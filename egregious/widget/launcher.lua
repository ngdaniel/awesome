local capi =
{
    awesome = awesome,
    screen = screen,
    client = client
}
local wibox = require("wibox")
local theme = require("beautiful")
local awful = require("awful")

local launcher = { mt = {} }

local function make_button(args)
    local args = args or {}
    local w = wibox.widget.background()
    local icon = wibox.widget.imagebox()
    w:set_widget(icon)
    w.focus = function ()
        w:set_bg(theme.bg_focus) -- TODO: make replacable
        icon:set_image(theme.launcher_icon_focus) -- TODO: make replacable
    end
    w.normal = function ()
        w:set_bg(theme.bg_normal) -- TODO: make replacable
        icon:set_image(theme.launcher_icon) -- TODO: make replacable
    end
    w.normal()
    return w
end

local function make_prompt_widget(args)
    local args = args or {}
    local w = wibox.layout.fixed.horizontal()
    w:fill_space(true)
    -- pre_prompt
    local pre = wibox.widget.textbox()
    pre:set_markup("<span fgcolor='" .. beautiful.fg_focus .. "'>Run</span>") -- TODO: make replacable
    local pre_margin = wibox.layout.margin(pre, 2, 2)
    local pre_bg = wibox.widget.background()
    pre_bg:set_widget(pre_margin)
    pre_bg:set_bg(theme.bg_focus) -- TODO: make replacable
    w:add(pre_bg)
    -- prompt
    local pr = awful.widget.prompt() 
    local pr_margin = wibox.layout.margin(pr, 4, 0)
    local pr_bg = wibox.widget.background()
    pr_bg:set_widget(pr_margin)
    pr_bg:set_bg(theme.bg_widget)
    w:add(pr_bg)
    w.run = function (args)
        local args = args or {}
        local done_callback = args.done_callback or {}
        awful.prompt.run({ prompt="", bg_cursor=theme.fg_normal },
            pr.widget,
            awful.util.spawn,
            awful.completion.shell,
            awful.util.getdir("cache") .. "/history",
            50,
            done_callback)
    end
    return w
end

function launcher.new(args)
    local args = args or {}
    local w = wibox.layout.fixed.horizontal()
    local button = make_button(args)
    local pop_w = make_prompt_widget(args)
    local expander = wibox.widget.background()
    w.hide = function ()
        w.pop = false
        button.normal()
        expander:set_widget(nil)
    end
    w.show = function ()
        if not w.pop then
            w.pop = true
            button.focus()
            expander:set_widget(pop_w)
            pop_w.run({done_callback = w.hide})
        end
    end
    button:buttons(awful.util.table.join(
        awful.button({ }, 1, function ()
            w.show()
        end)
    ))
    w:add(button)
    w:add(expander)
    return w
end

function launcher.mt:__call(...)
    return launcher.new(...)
end

return setmetatable(launcher, launcher.mt)
