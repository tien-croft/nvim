local fzf = require("fzf-lua")
local actions = fzf.actions

return {
  {
    "ibhagwan/fzf-lua",
    opts = {
      winopts = {
        preview = {
          hidden = true, -- This hides the preview window by default
        },
      },
      keymap = {
        fzf = {
          ["ctrl-p"] = "toggle-preview",
        },
      },
      files = {
        cwd_prompt = true, -- false: show cwd, true: hide cwd
        actions = {
          ["alt-i"] = false,
          ["alt-h"] = false,
          ["ctrl-i"] = { actions.toggle_ignore },
          ["ctrl-h"] = { actions.toggle_hidden },
        },
      },
      grep = {
        actions = {
          ["alt-i"] = false,
          ["alt-h"] = false,
          ["ctrl-i"] = { actions.toggle_ignore },
          ["ctrl-h"] = { actions.toggle_hidden },
        },
      },
    },
  },
}
