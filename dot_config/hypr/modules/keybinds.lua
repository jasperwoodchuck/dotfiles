local terminal    = "ghostty"
local menu        = "fuzzel"
local fileManager = "nemo"
local browser     = "zen-browser"

local SUPER       = "SUPER +"
local SHIFT       = "SHIFT +"
local PRINT       = "PRINT"

hl.bind(SUPER .. "W", hl.dsp.window.close())
hl.bind(SUPER .. "E", hl.dsp.exec_cmd(fileManager))
hl.bind(SUPER .. "R", hl.dsp.exec_cmd(browser))
hl.bind(SUPER .. "T", hl.dsp.exec_cmd(terminal))
hl.bind(SUPER .. "SPACE", hl.dsp.exec_cmd(menu))

hl.bind(SUPER .. "V", hl.dsp.window.float({ action = "toggle" }))

hl.bind(SUPER .. "F", hl.dsp.window.fullscreen({
    mode = "maximized",
    action = "toggle"
}))

hl.bind(SUPER .. "TAB", hl.dsp.exec_cmd("wayle panel toggle"))

hl.bind(PRINT, hl.dsp.exec_cmd('wayshot - --clipboard -g'))
hl.bind(SUPER .. PRINT, hl.dsp.exec_cmd('wayshot ~/Pictures/Screenshots'))
hl.bind(SUPER .. SHIFT .. PRINT, hl.dsp.exec_cmd('wayshot ~/Pictures/Screenshots -g'))

hl.bind(SUPER .. "J", hl.dsp.focus({ direction = "left" }))
hl.bind(SUPER .. "K", hl.dsp.focus({ direction = "right" }))

for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(SUPER .. key, hl.dsp.focus({ workspace = i }))
    hl.bind(SUPER .. SHIFT .. key, hl.dsp.window.move({ workspace = i }))
end

hl.bind(SUPER .. "S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(SUPER .. SHIFT .. "S", hl.dsp.window.move({ workspace = "special:magic" }))

hl.bind(SUPER .. "mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(SUPER .. "mouse_up", hl.dsp.focus({ workspace = "e-1" }))

hl.bind(SUPER .. "mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(SUPER .. "mouse:273", hl.dsp.window.resize(), { mouse = true })

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
    { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume -l 0 @DEFAULT_AUDIO_SINK@ 5%-"),
    { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
    { locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
    { locked = true, repeating = true })

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl set 5%-"), { locked = true, repeating = true })

hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
