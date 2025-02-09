local wezterm = require 'wezterm'
local act = wezterm.action

local keys = {
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

return keys