---------------------------
-- Material awesome theme --
-- Color definitions can be found here:
-- https://www.google.com/design/spec/style/color.html#color-color-palette
---------------------------

local awful = require("awful")
awful.util = require("awful.util")

theme = {}

themedir = awful.util.getdir("config").."/themes/material"

theme.font          = "ttf-roboto"

local white = "#FFFFFF"


-- Brown
local br50 = "#EFEBE9"
local br200 = "#BCAAA4"
local br300 = "#A1887F"
local br500 = "#795548"
local br700 = "#5D4037"
local br800 = "#4E342E"

-- Blue
local bl200 = "#90CAF9"
local bl300 = "#64B5F6"
local bl500 = "#2196F3"

-- Deep Orange
local do100 = "#FFCCBC"

-- create a shadow effect for the main wibox by adding a slightly larger one
-- behind it
mybgwibox = {}
for s = 1, screen.count() do
    -- Create a background wibox
    mybgwibox[s] = awful.wibox({ position = "top", height = "30", screen = s })
    mybgwibox[s]:set_bg(br800)
end

theme.bg_normal     = br500
theme.bg_focus      = bl300
theme.bg_urgent     = do100
theme.bg_minimize   = br800
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = br50
theme.fg_focus      = white
theme.fg_urgent     = "#ffffff"
theme.fg_minimize   = br300

theme.border_width  = 2
theme.border_normal = br500
theme.border_focus  = bl300
theme.border_marked = bl500

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:
theme.taglist_fg_focus = white
theme.taglist_bg_focus = br300

-- Display the taglist squares
theme.taglist_squares_sel   = themedir.."/squarefw.png"
theme.taglist_squares_unsel = themedir.."/squarew.png"

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = "/usr/share/awesome/themes/default/submenu.png"
theme.menu_height = 15
theme.menu_width  = 100

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"
theme.widget_fg = br800
theme.widget_bg = br300

-- Define the image to load
theme.titlebar_close_button_normal = "/usr/share/awesome/themes/default/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = "/usr/share/awesome/themes/default/titlebar/close_focus.png"

theme.titlebar_ontop_button_normal_inactive = "/usr/share/awesome/themes/default/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = "/usr/share/awesome/themes/default/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = "/usr/share/awesome/themes/default/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = "/usr/share/awesome/themes/default/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = "/usr/share/awesome/themes/default/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = "/usr/share/awesome/themes/default/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = "/usr/share/awesome/themes/default/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = "/usr/share/awesome/themes/default/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = "/usr/share/awesome/themes/default/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = "/usr/share/awesome/themes/default/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = "/usr/share/awesome/themes/default/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = "/usr/share/awesome/themes/default/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = "/usr/share/awesome/themes/default/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = "/usr/share/awesome/themes/default/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = "/usr/share/awesome/themes/default/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = "/usr/share/awesome/themes/default/titlebar/maximized_focus_active.png"

theme.wallpaper = themedir.."/awesome_material.png"

-- {{{ Misc
theme.awesome_icon = themedir .. "/awesome-icon.png"
theme.netdown_icon = themedir .. "/icons/net_down.png"
theme.netup_icon = themedir .. "/icons/net_up.png"
--theme.menu_submenu_icon      = sharedthemes .. "/default/submenu.png"
--theme.tasklist_floating_icon = sharedthemes .. "/default/tasklist/floatingw.png"
-- }}}

-- {{{ Layout
theme.layout_tile       = themedir .. "/layouts/tile.png"
theme.layout_tileleft   = themedir .. "/layouts/tileleft.png"
theme.layout_tilebottom = themedir .. "/layouts/tilebottom.png"
theme.layout_tiletop    = themedir .. "/layouts/tiletop.png"
theme.layout_fairv      = themedir .. "/layouts/fairv.png"
theme.layout_fairh      = themedir .. "/layouts/fairh.png"
theme.layout_spiral     = themedir .. "/layouts/spiral.png"
theme.layout_dwindle    = themedir .. "/layouts/dwindle.png"
theme.layout_max        = themedir .. "/layouts/max.png"
theme.layout_fullscreen = themedir .. "/layouts/fullscreen.png"
theme.layout_magnifier  = themedir .. "/layouts/magnifier.png"
theme.layout_floating   = themedir .. "/layouts/floating.png"
-- }}}

--theme.awesome_icon = "/usr/share/awesome/icons/awesome16.png"

-- Define the icon theme for application icons. If not set then the icons 
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme
-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
