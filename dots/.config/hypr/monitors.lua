local omarchy_gdk_scale = 1
local omarchy_monitor_scale = 1

hl.env("GDK_SCALE", tostring(omarchy_gdk_scale))
hl.monitor({ output = "HDMI-A-1", mode = "preferred", position = "0x0", scale = omarchy_monitor_scale })
hl.monitor({ output = "DP-2", mode = "preferred", position = "1920x0", scale = omarchy_monitor_scale })
