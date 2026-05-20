-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Tokyo Night Moon'

config.window_background_opacity = 0.9
config.macos_window_background_blur = 20
-- more visual tweaks
config.window_padding = { left = 8, right = 8, top = 8, bottom = 8 }
config.inactive_pane_hsb = { saturation = 0.8, brightness = 0.7 }

-- default is 3500, I want more
config.scrollback_lines = 10000

-- prevent window from resizing when changing font-size (cmd+(+/-))
config.adjust_window_size_when_changing_font_size = false

-- use macOS native fullscreen
config.native_macos_fullscreen_mode = true

config.font = wezterm.font 'SpaceMono Nerd Font'
config.font_size = 14.0

config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "RESIZE"

-- Let Cmd bypass tmux's mouse capture so WezTerm can handle the click event
config.bypass_mouse_reporting_modifiers = 'SUPER'

-- Cmd+Click to open URLs
config.mouse_bindings = {
  {
    event = { Up = { streak = 1, button = 'Left' } },
    mods = 'SUPER',
    action = wezterm.action.OpenLinkAtMouseCursor,
  },
}

-- and finally, return the configuration to wezterm
return config
