layouts =
{
    awful.layout.suit.tile,
    awful.layout.suit.tile.bottom,
    awful.layout.suit.fair,
    awful.layout.suit.spiral,
    awful.layout.suit.max.fullscreen,
    awful.layout.suit.magnifier
}

tags = {}
for s = 1, screen.count() do
    tags[s] = awful.tag({'1', '2', '3', '4', '5', '6', '7', '8', '9'}, s, layouts[1])
end