local wezterm = require 'wezterm'
local act = wezterm.action

local resurrect = wezterm.plugin.require("https://github.com/MLFlexer/resurrect.wezterm")

resurrect.periodic_save({ interval_seconds = 15 * 60, save_workspaces = true, save_windows = true, save_tabs = true })

wezterm.on("resurrect.error", function(err)
	wezterm.log_error("ERROR!")
	wezterm.gui.gui_windows()[1]:toast_notification("resurrect", err, nil, 3000)
end)

-- loads the state whenever I create a new workspace
wezterm.on("smart_workspace_switcher.workspace_switcher.created", function(window, path, label)
  local workspace_state = resurrect.workspace_state
  
  workspace_state.restore_workspace(resurrect.load_state(label, "workspace"), {
    window = window,
    relative = true,
    restore_text = true,
    on_pane_restore = resurrect.tab_state.default_on_pane_restore,
  })
end)

local config = {}

config.keys = require("keybinds")

config.keys = {
  -- Clears only the scrollback and leaves the viewport intact.
  -- You won't see a difference in what is on screen, you just won't
  -- be able to scroll back until you've output more stuff on screen.
  -- This is the default behavior.
  -- {
  --   key = 'K',
  --   mods = 'CMD',
  --   action = act.ClearScrollback 'ScrollbackOnly',
  -- },
  -- Clears the scrollback and viewport leaving the prompt line the new first line.
  {
    key = 'k',
    mods = 'CMD',
    action = act.ClearScrollback 'ScrollbackAndViewport',
  },
  -- Clears the scrollback and viewport, and then sends CTRL-L to ask the
  -- shell to redraw its prompt
  -- {
  --   key = 'K',
  --   mods = 'CMD',
  --   action = act.Multiple {
  --     act.ClearScrollback 'ScrollbackAndViewport',
  --     act.SendKey { key = 'L', mods = 'CTRL' },
  --   },
  -- },
}

wezterm.on("gui-startup", resurrect.resurrect_on_gui_startup)

wezterm.on("resurrect.periodic_save", function(file_path, event_type)
  wezterm.gui.gui_windows()[1]:toast_notification("Wezterm - resurrect", file_path .. event_type, nil, 4000)
end)

return config