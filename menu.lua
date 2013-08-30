myawesomemenu = {
   { "manual", terminal .. " -e man awesome" },
   { "edit config", editor_cmd .. " " .. awesome.conffile },
}

myterminalmenu = {
   { "urxvt", "urxvt" },
   { "xterm", "xterm" }
}

myeditormenu = {
   { "emacs", "emacs"},
   { "vim", "gvim"},
   { "gedit", "gedit"},
}

mygamemenu = {
   { "steam", "steam"},	   
   { "dwarffortress", "dwarffortress"}
}

myinternetmenu = {
   { "google-chrome", "google-chrome" },
   { "chromium", "chromium"}
}

myofficemenu = {
   { "libreoffice", "libreoffice"},
   { "evince", "evince"}     
}

myprogrammingmenu = {
   { "eclipse", "eclipse"},
   { "intellij-idea", "intellij-idea"}		 
}

mygraphicsmenu = {
   { "mirage", "mirage"},
   { "gimp", "gimp"}	  
}

myvlc = {
   { "vlc", "vlc"},
   { "vlc-ncurses", terminal .. " -e vlc -I ncurses"}
}

mymultimediamenu = {
   { "vlc", myvlc},
   { "exaile", "exaile"},
   { "cmus", terminal .. " -e cmus"},
   { "totem", "totem"}		 
}

myaccessoriesmenu = {
}

exec = {
    { "Terminals", myterminalmenu},
    { "Editors", myeditormenu},
    { "Internet", myinternetmenu},
    { "Office", myofficemenu},
    { "Multimedia", mymultimediamenu},
    { "Graphics", mygraphicsmenu},
    { "Games", mygamemenu},
    { "Programming", myprogrammingmenu},
    { "Accessories", myaccessoriesmenu},
}

config = {
}

myaweconfig = {
   { "edit rc.lua", editor .. " ~/.config/awesome/rc.lua"},
   { "edit theme.lua", editor .. " ~/.config/awesome/themes/default/theme.lua"},
   { "restart awesome", awesome.restart},
}

mysystools = {
   { "display", "arandr"},
   { "awesome", myaweconfig}
}

mymainmenu = awful.menu({ items = { 
    { "File Manager", "urxvt -e ranger"},
    { "Executables", exec},
    { "Configs", config},
    { "Tools", mysystools},
    { "Reboot", "systemctl reboot"},
    { "Shutdown", "systemctl poweroff"}
}})
