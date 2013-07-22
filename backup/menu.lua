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

myaweconfig = {
   { "edit rc.lua", editor .. " ~/.config/awesome/rc.lua"},
   { "edit theme.lua", editor .. " ~/.config/awesome/themes/default/theme.lua"},
   { "restart awesome", awesome.restart},
}

mysystools = {
   { "wifi", "ec_wifimanager"},
   { "sound", "ec_soundmanager"},
   { "display", "arandr"},
   { "awesome", myaweconfig}
}

mymainmenu = awful.menu({ items = { 
    { "APPS", nil, beautiful.app_icon },		  	    
    { "File Manager", "ec_filemanager"},
    { "Terminals", myterminalmenu},
    { "Editors", myeditormenu},
    { "Internet", myinternetmenu},
    { "Office", myofficemenu},
    { "Multimedia", mymultimediamenu},
    { "Graphics", mygraphicsmenu},
    { "Games", mygamemenu},
    { "Programming", myprogrammingmenu},
    { "Accessories", myaccessoriesmenu},
    { "SYSTEM", nil, beautiful.pref_icon },
    { "Tools", mysystools},
    { "Reboot", "systemctl reboot"},
    { "Shutdown", "systemctl shutdown"}
}})