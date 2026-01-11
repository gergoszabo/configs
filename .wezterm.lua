local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.initial_cols = 120
config.initial_rows = 28

config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"

config.font = wezterm.font "FiraCode Nerd Font"
config.font_size = 10
config.color_scheme = 'catppuccin-mocha'

config.keys = {
  {
    key = 'RightArrow',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SplitPane {
      direction = 'Right',
    },
  },
  {
    key = 'DownArrow',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SplitPane {
      direction = 'Down',
    },
  },
}

return config
