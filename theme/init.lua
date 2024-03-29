local gears = require("gears")
local lain  = require("lain")
local awful = require("awful")
local wibox = require("wibox")
local os, math, string = os, math, string
math.randomseed(os.time())

local theme                                     = {}

-- Theme globals
theme.dir = os.getenv("HOME") .. "/.config/awesome/theme"
theme.wallpaper = theme.dir .. "/wallpapers/wallpaper" .. math.random(1, 5) .. ".jpg"
theme.font = "Hack 10"
-- global colors
theme.light_grey                                = "#ebdbb2"
theme.dark_grey                                 = "#32302f"
theme.darker_grey                               = "#232323"
theme.light_blue                                = "#4e9699" 
theme.dark_blue                                 = "#2b5355"
theme.red                                       = "#C92132"

theme.bg_normal                                 = theme.dark_grey
theme.fg_normal                                 = theme.light_grey
theme.bg_focus                                  = theme.dark_blue
theme.fg_focus                                  = theme.darker_grey
theme.bg_urgent                                 = theme.red
theme.fg_urgent                                 = theme.dark_grey
-- taglist colors
theme.taglist_bg_focus                          = theme.light_blue
theme.taglist_fg_focus                          = theme.dark_grey
theme.taglist_bg_occupied                       = theme.dark_blue
theme.taglist_fg_occupied                       = theme.dark_grey
theme.taglist_bg_empty                          = theme.dark_grey
theme.taglist_fg_empty                          = theme.light_grey
theme.taglist_bg_urgent                         = theme.red
theme.taglist_fg_urgent                         = theme.dark_grey
-- tasklist colors
theme.tasklist_bg_normal                        = theme.dark_grey
theme.tasklist_fg_normal                        = theme.light_grey
theme.tasklist_bg_focus                         = theme.light_blue
theme.tasklist_fg_focus                         = theme.darker_grey
theme.tasklist_bg_urgent                        = theme.red
theme.tasklist_fg_urgent                        = theme.dark_grey
-- titlebar colors
theme.titlebar_bg_normal                        = theme.dark_blue
theme.titlebar_fg_normal                        = theme.darker_grey
theme.titlebar_bg_focus                         = theme.light_blue
theme.titlebar_fg_focus                         = theme.darker_grey
-- widget colors
theme.fg_widget                                 = theme.dark_grey


-- Borders
theme.border_width                              = 2
theme.border_normal                             = theme.dark_blue
theme.border_focus                              = theme.light_blue
theme.border_marked                             = theme.red
theme.useless_gap                               = 7
-- Bar
theme.bar_position = "top"
theme.bar_height = 16
-- Tasklist
theme.tasklist_plain_task_name                  = true
theme.tasklist_disable_icon                     = true
-- Menu
theme.menu_height                               = 16
theme.menu_width                                = 140
-- Notifications
theme.notification_bg                           = theme.bg_normal
theme.notification_fg                           = theme.fg_normal
theme.notification_border_width                 = 0
theme.notification_border_color                 = theme.bg_normal
theme.notification_shape                        = gears.shape.rectangle
theme.notification_opacity                      = 1
theme.notification_margin                       = 30


-- Colors (widgets)
theme.green          = "#00b159"
theme.red            = "#d64d4d"
theme.yellow         = "#cc9c00"
theme.blue           = "#428bca"
theme.darkred        = "#c92132"
theme.darkgreen      = "#4d7358"
theme.darkyellow     = "#f18e38" 
theme.gray           = "#5e5e5e"
theme.violet         = "#8c8ccd"
theme.pink           = "#B85C8A"
theme.black          = theme.bg_normal


-- Icons
theme.menu_submenu_icon                         = theme.dir .. "/icons/submenu.png"
theme.awesome_icon                              = theme.dir .. "/icons/awesome.png"
-- layouts
theme.layout_tile                               = theme.dir .. "/icons/layouts/tile.png"
theme.layout_tileleft                           = theme.dir .. "/icons/layouts/tileleft.png"
theme.layout_tilebottom                         = theme.dir .. "/icons/layouts/tilebottom.png"
theme.layout_tiletop                            = theme.dir .. "/icons/layouts/tiletop.png"
theme.layout_fairv                              = theme.dir .. "/icons/layouts/fairv.png"
theme.layout_fairh                              = theme.dir .. "/icons/layouts/fairh.png"
theme.layout_spiral                             = theme.dir .. "/icons/layouts/spiral.png"
theme.layout_centerwork                         = theme.dir .. "/icons/layouts/centerwork.png"
theme.layout_dwindle                            = theme.dir .. "/icons/layouts/dwindle.png"
theme.layout_max                                = theme.dir .. "/icons/layouts/max.png"
theme.layout_fullscreen                         = theme.dir .. "/icons/layouts/fullscreen.png"
theme.layout_magnifier                          = theme.dir .. "/icons/layouts/magnifier.png"
theme.layout_floating                           = theme.dir .. "/icons/layouts/floating.png"
-- widgets
theme.widget_ac                                 = theme.dir .. "/icons/widgets/ac.png"
theme.widget_battery                            = theme.dir .. "/icons/widgets/battery.png"
theme.widget_battery_medium                     = theme.dir .. "/icons/widgets/battery_medium.png"
theme.widget_battery_low                        = theme.dir .. "/icons/widgets/battery_low.png"
theme.widget_battery_empty                      = theme.dir .. "/icons/widgets/battery_empty.png"
theme.widget_battery_no                         = theme.dir .. "/icons/widgets/battery_no.png"
theme.widget_mem                                = theme.dir .. "/icons/widgets/mem.png"
theme.widget_cpu                                = theme.dir .. "/icons/widgets/cpu.png"
theme.widget_temp                               = theme.dir .. "/icons/widgets/temp.png"
theme.widget_net                                = theme.dir .. "/icons/widgets/net.png"
theme.widget_hdd                                = theme.dir .. "/icons/widgets/ssd.png"
theme.widget_clock                              = theme.dir .. "/icons/widgets/clock.png" 
theme.widget_music                              = theme.dir .. "/icons/widgets/note.png"
theme.widget_music_on                           = theme.dir .. "/icons/widgets/note_on.png"
theme.widget_music_pause                        = theme.dir .. "/icons/widgets/pause.png"
theme.widget_music_stop                         = theme.dir .. "/icons/widgets/stop.png"
theme.widget_vol                                = theme.dir .. "/icons/widgets/vol.png"
theme.widget_vol_low                            = theme.dir .. "/icons/widgets/vol_low.png"
theme.widget_vol_no                             = theme.dir .. "/icons/widgets/vol_no.png"
theme.widget_vol_mute                           = theme.dir .. "/icons/widgets/vol_mute.png"
-- titlebar
theme.titlebar_close_button_focus               = theme.dir .. "/icons/titlebar/close_focus.png"
theme.titlebar_ontop_button_focus_active        = theme.dir .. "/icons/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_focus_inactive      = theme.dir .. "/icons/titlebar/ontop_focus_inactive.png"
theme.titlebar_sticky_button_focus_active       = theme.dir .. "/icons/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_focus_inactive     = theme.dir .. "/icons/titlebar/sticky_focus_inactive.png"
theme.titlebar_floating_button_focus_active     = theme.dir .. "/icons/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_focus_inactive   = theme.dir .. "/icons/titlebar/floating_focus_inactive.png"
theme.titlebar_maximized_button_focus_active    = theme.dir .. "/icons/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_focus_inactive  = theme.dir .. "/icons/titlebar/maximized_focus_inactive.png"


-- Separators
theme.sep1 = theme.dir .. "/icons/display/1.png"
theme.sep2 = theme.dir .. "/icons/display/2.png"
theme.sep3 = theme.dir .. "/icons/display/3.png"
theme.sep4 = theme.dir .. "/icons/display/4.png"
theme.sep5 = theme.dir .. "/icons/display/5.png"
theme.sep6 = theme.dir .. "/icons/display/6.png"
theme.sep7 = theme.dir .. "/icons/display/7.png"
theme.sep8 = theme.dir .. "/icons/display/8.png"
theme.sep9 = theme.dir .. "/icons/display/9.png"
theme.sep10 = theme.dir .. "/icons/display/10.png"
theme.sep11 = theme.dir .. "/icons/display/11.png"
theme.sep12 = theme.dir .. "/icons/display/12.png"
theme.sep13 = theme.dir .. "/icons/display/13.png"
theme.sep14 = theme.dir .. "/icons/display/14.png"
theme.sep15 = theme.dir .. "/icons/display/15.png"
theme.sep16 = theme.dir .. "/icons/display/16.png"
theme.sep17 = theme.dir .. "/icons/display/17.png"
sep1 = wibox.widget.imagebox(theme.sep1)
sep2 = wibox.widget.imagebox(theme.sep2)
sep3 = wibox.widget.imagebox(theme.sep3)
sep4 = wibox.widget.imagebox(theme.sep4)
sep5 = wibox.widget.imagebox(theme.sep5)
sep6 = wibox.widget.imagebox(theme.sep6)
sep7 = wibox.widget.imagebox(theme.sep7)
sep8 = wibox.widget.imagebox(theme.sep8)
sep9 = wibox.widget.imagebox(theme.sep9)
sep10 = wibox.widget.imagebox(theme.sep10)
sep11 = wibox.widget.imagebox(theme.sep11)
sep12 = wibox.widget.imagebox(theme.sep12)
sep13 = wibox.widget.imagebox(theme.sep13)
sep14 = wibox.widget.imagebox(theme.sep14)
sep15 = wibox.widget.imagebox(theme.sep15)
sep16 = wibox.widget.imagebox(theme.sep16)
sep17 = wibox.widget.imagebox(theme.sep17)

-- Widgets
local markup = lain.util.markup
-- keyboard
kbd_widget = awful.widget.keyboardlayout:new()
local kbd_widget = wibox.container.background(wibox.container.margin(wibox.widget { kbd_widget, layout = wibox.layout.align.horizontal }, 0, 0, 0, 0), theme.green)
-- ALSA volume bar
local vol_icon = wibox.widget.imagebox(theme.widget_vol)
theme.volume = lain.widget.alsabar({
    width = 45, border_width = 0, ticks = true, ticks_size = 5, timeout = 1,
    notification_preset = { font = theme.font },
    settings = function()
        if volume_now.status == "off" then
            vol_icon:set_image(theme.widget_vol_mute)
        elseif volume_now.level == 0 then
            vol_icon:set_image(theme.widget_vol_no)
        elseif volume_now.level <= 50 then
            vol_icon:set_image(theme.widget_vol_low)
        else
            vol_icon:set_image(theme.widget_vol)
        end
    end,
    colors = {
        background   = theme.bg_normal,
        mute         = theme.red,
        unmute       = theme.green
    }
})
theme.volume.tooltip.wibox.fg = theme.fg_widget
local volumebg = wibox.container.background(theme.volume.bar, theme.dark_grey, gears.shape.rectangle)
local vol_widget = wibox.container.margin(volumebg, 2, 7, 4, 4)
local volume_widget = wibox.container.background(wibox.container.margin(wibox.widget { vol_icon, vol_widget, layout = wibox.layout.align.horizontal }, 0, 0), theme.blue)
-- FS
local fs_icon = wibox.widget.imagebox(theme.widget_hdd)
local fs = lain.widget.fs({
    notification_preset = { fg = theme.fg_normal, bg = theme.bg_normal, font = theme.font },
    settings = function()
        local fsp = string.format(" %3.2f %s ", fs_now["/home"].free, fs_now["/home"].units)
        widget:set_markup(markup.font(theme.font, markup.fg.color(theme.fg_widget, fsp)))
    end
})
local fs_widget =  wibox.container.background(wibox.container.margin(wibox.widget { fs_icon, fs.widget, layout = wibox.layout.align.horizontal }, 0, 0), theme.yellow)
-- Coretemp (lain, average)
local temp_icon = wibox.widget.imagebox(theme.widget_temp)
local temp = lain.widget.temp({
    settings = function()
        widget:set_markup(markup.font(theme.font, markup.fg.color(theme.fg_widget, " " .. coretemp_now .. "° ")))
    end
})
local temp_widget =  wibox.container.background(wibox.container.margin(wibox.widget { temp_icon, temp.widget, layout = wibox.layout.align.horizontal }, 0, 0), theme.red)
-- CPU
local cpu_icon = wibox.widget.imagebox(theme.widget_cpu)
local cpu = lain.widget.cpu({
    settings = function()
        widget:set_markup(markup.font(theme.font, markup.fg.color(theme.fg_widget, " " .. cpu_now.usage .. "% ")))
    end
})
local cpu_widget =  wibox.container.background(wibox.container.margin(wibox.widget { cpu_icon, cpu.widget, layout = wibox.layout.align.horizontal }, 0, 0), theme.blue)
-- MEM
local mem_icon = wibox.widget.imagebox(theme.widget_mem)
local mem = lain.widget.mem({
    settings = function()
        widget:set_markup(markup.font(theme.font, markup.fg.color(theme.fg_widget, " " .. mem_now.used .. "MB [" .. mem_now.perc .. "%]")))
    end
})
local mem_widget =  wibox.container.background(wibox.container.margin(wibox.widget { mem_icon, mem.widget, layout = wibox.layout.align.horizontal }, 0, 0), theme.pink)
-- Battery
local bat_icon = wibox.widget.imagebox(theme.widget_battery)
local batspr_l = wibox.widget.imagebox(theme.w8)
local batspr_r = wibox.widget.imagebox(theme.w9)
local bat = lain.widget.bat({
    battery = "BAT0",
    timeout = 1,
    notify = "on",
    n_perc = {5,15},
    settings = function()
        bat_notification_low_preset = {
            title = "Battery low",
            text = "Plug the cable!",
            timeout = 15,
            fg = "#232323",
            bg = "#f18e38"
        }
        bat_notification_critical_preset = {
            title = "Battery exhausted",
            text = "Shutdown imminent",
            timeout = 15,
            fg = "#232323",
            bg = "#c92132"
        }
        if bat_now.status ~= "N/A" then
            if bat_now.status == "Charging" then
                bat_icon:set_image(theme.widget_ac)
                batspr_l:set_image(theme.w12)
                batspr_r:set_image(theme.w10)
                widget:set_markup(markup.font(theme.font, markup.bg.color(theme.blue, markup.fg.color(theme.fg_widget," +" .. bat_now.perc .. "% [" .. bat_now.watt .. "W][" .. bat_now.time .. "]"))))
            elseif bat_now.status == "Full" then
                bat_icon:set_image(theme.widget_ac)
                batspr_l:set_image(theme.w8)
                batspr_r:set_image(theme.w9)
                widget:set_markup(markup.font(theme.font, markup.fg.color("#232323", " ~" .. bat_now.perc .. "% [" .. bat_now.watt .. "W][" .. bat_now.time .. "]")))
            elseif tonumber(bat_now.perc) <= 35 then
                bat_icon:set_image(theme.widget_battery_empty)
                batspr_l:set_image(theme.w13)
                batspr_r:set_image(theme.w11)
                widget:set_markup(markup.font(theme.font, markup.bg.color(theme.red, markup.fg.color(theme.fg_widget, " -" .. bat_now.perc .. "% [" .. bat_now.watt .. "W][" .. bat_now.time .. "]"))))     
            elseif tonumber(bat_now.perc) <= 70 then
                bat_icon:set_image(theme.widget_battery_medium)
                batspr_l:set_image(theme.w16)
                batspr_r:set_image(theme.w14)
                widget:set_markup(markup.font(theme.font, markup.bg.color(theme.yellow, markup.fg.color(theme.fg_widget, " -" .. bat_now.perc .. "% [" .. bat_now.watt .. "W][" .. bat_now.time .. "]"))))
            elseif tonumber(bat_now.perc) <= 90 then
                bat_icon:set_image(theme.widget_battery)
                batspr_l:set_image(theme.w17)
                batspr_r:set_image(theme.w15)
                widget:set_markup(markup.font(theme.font, markup.bg.color(theme.green, markup.fg.color(theme.fg_widget, " -" .. bat_now.perc .. "% [" .. bat_now.watt .. "W][" .. bat_now.time .. "]"))))
            else
                bat_icon:set_image(theme.widget_battery)
                batspr_l:set_image(theme.w12)
                batspr_r:set_image(theme.w10)
                widget:set_markup(markup.font(theme.font, markup.bg.color(theme.blue, markup.fg.color(theme.fg_widget, " -" .. bat_now.perc .. "% [" .. bat_now.watt .. "W][" .. bat_now.time .. "]"))))
            end
        else
            widget:set_markup(markup.font(theme.font, markup.bg.color(theme.red, markup.fg.color(theme.fg_widget, " AC "))))
            bat_icon:set_image(theme.widget_battery_no)
            batspr_l:set_image(theme.w13)
            batspr_r:set_image(theme.w11)
        end
    end
})
local batbar = wibox.widget {
    forced_height    = 1,
    forced_width     = 45,
    color            = "#232323",
    background_color = "#232323",
    margins          = 1,
    paddings         = 1,
    ticks            = true,
    ticks_size       = 5,
    widget           = wibox.widget.progressbar,
}
local batupd = lain.widget.bat({
    battery = "BAT0",
    timeout = 1,
    settings = function()
        if bat_now.status ~= "N/A" then
            if bat_now.status == "Charging" then
                batbar:set_color(theme.blue)
            elseif bat_now.status == "Full" then
                batbar:set_color(theme.gray)
            elseif tonumber(bat_now.perc) <= 35 then
                batbar:set_color(theme.red)
            elseif tonumber(bat_now.perc) <= 70 then
                batbar:set_color(theme.yellow)
            elseif tonumber(bat_now.perc) <= 90 then
                batbar:set_color(theme.green)
            else
                batbar:set_color(theme.blue)
            end
            batbar:set_value(bat_now.perc / 100)
        else
            return
        end
    end
})
local batbg = wibox.container.background(batbar, "#474747", gears.shape.rectangle)
local bat_widget = wibox.container.margin(batbg, 2, 7, 4, 4)
local battery_widget1 = wibox.container.background(wibox.container.margin(wibox.widget { bat_icon, bat_widget,  layout = wibox.layout.align.horizontal }, 1, 1), theme.gray)
local battery_widget2 = wibox.container.background(wibox.container.margin(wibox.widget { batspr_l, bat.widget, batspr_r, layout = wibox.layout.align.horizontal }, 0, 0), theme.gray)
-- Clock
local clock_icon = wibox.widget.imagebox(theme.widget_clock)
local clock = awful.widget.textclock("<span font=\"Hack Regular 10\" color=\"#32302f\"> %a %d %b  %H:%M </span>")
local clock_widget = wibox.container.background(wibox.container.margin(wibox.widget {clock_icon, clock, layout = wibox.layout.align.horizontal }, 0, 1), theme.violet)
-- Calendar
local calendar = lain.widget.cal({
    cal = "cal --color=always",
    attach_to = { clock_widget },
    notification_preset = {
        font = "Hack Regular 10",
        fg   = theme.fg_normal,
        bg   = theme.bg_normal
    }
})


function theme.connect(s)
    gears.wallpaper.maximized(theme.wallpaper, 1, true)

    awful.tag(awful.util.tagnames, s, awful.layout.layouts[1])

    s.promptbox = awful.widget.prompt()

    s.layoutbox = awful.widget.layoutbox(s)

    s.taglist = awful.widget.taglist(s, awful.widget.taglist.filter.all, awful.util.taglist_buttons)

    s.tasklist = awful.widget.tasklist(s, awful.widget.tasklist.filter.currenttags, awful.util.tasklist_buttons)

    -- Create the bar
    s.wibox = awful.wibar({ position = theme.bar_position, screen = s, height = theme.bar_height, bg = theme.bg_normal, fg = theme.fg_focus,  })
    -- Add widgets to the bar
    s.wibox:setup {
        layout = wibox.layout.align.horizontal,
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
            s.taglist,
	    s.promptbox,
        },
        s.tasklist, -- Middle widget
        { -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            wibox.widget.systray(),
            sep1,
            kbd_widget,
            sep2,
            volume_widget,
            sep3,
            fs_widget,
            sep4,
            temp_widget,
            sep5,
            cpu_widget,
            sep6,
            mem_widget,
            sep7,
            battery_widget1,
            battery_widget2,
            clock_widget,
            s.layoutbox,
        },
    }
end

return theme

