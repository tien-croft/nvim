return {
  {
    "ibhagwan/fzf-lua",
    opts = function()
      local fzf = require("fzf-lua")
      local config = fzf.config
      local actions = fzf.actions

      -- Quick fix
      config.defaults.keymap.fzf["ctrl-f"] = "preview-page-down"
      config.defaults.keymap.fzf["ctrl-b"] = "preview-page-up"
      config.defaults.keymap.builtin["<c-f>"] = "preview-page-down"
      config.defaults.keymap.builtin["<c-b>"] = "preview-page-up"

      return {
        "default-title",
        fzf_colors = true,
        fzf_opts = {
          ["--no-scrollbar"] = true,
        },
        winopts = {
          preview = {
            hidden = true, -- This hides the preview window by default
          },
        },
        keymap = {
          fzf = {
            ["tab"] = "down",
            ["shift-tab"] = "up",
          },
        },
        files = {
          cwd_prompt = false,
          actions = {
            ["alt-i"] = { actions.toggle_ignore },
            ["alt-u"] = { actions.toggle_hidden },
          },
        },
        grep = {
          actions = {
            ["alt-i"] = { actions.toggle_ignore },
            ["alt-u"] = { actions.toggle_hidden },
          },
        },
      }
    end,
    keys = function()
      return {
        { "<leader>f", LazyVim.pick("files"), desc = "Find Files (Root Dir)" },
        { "<leader>F", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },

        { "<leader>uC", LazyVim.pick("colorschemes"), desc = "Colorscheme with Preview" },
        { "<leader>:", "<cmd>Telescope command_history<cr>", desc = "Command History" },
        {
          "<leader>,",
          "<cmd>Telescope buffers initial_mode=normal sort_mru=true sort_lastused=true<cr>",
          desc = "Buffers",
        },

        { "<leader>/", LazyVim.pick("live_grep"), desc = "Grep (Root Dir)" },
        { "<leader>rg", LazyVim.pick("live_grep"), desc = "Grep (Root Dir)" },
        { "<leader>rG", LazyVim.pick("live_grep", { root = false }), desc = "Grep (cwd)" },

        { "<leader>so", LazyVim.pick("oldfiles"), desc = "Recent" },
        { "<leader>sO", LazyVim.pick("oldfiles", { cwd = vim.uv.cwd() }), desc = "Recent (cwd)" },

        { "<leader>sg", LazyVim.pick("git_files"), desc = "Find Files (git-files)" },

        { "<leader>su", LazyVim.pick("undotree"), desc = "Find Files (git-files)" },
      }
    end,
  },
}
