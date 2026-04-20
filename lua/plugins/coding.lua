return {
  -- comments
  {
    "nvim-mini/mini.comment",
    enabled = true,
    opts = {
      mappings = {
        comment_line = "",
        comment_visual = "",
      },
    },
  },

  -- incremental rename
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ["*"] = {
          keys = {
            {
              "<leader>rn",
              function()
                local inc_rename = require("inc_rename")
                return ":" .. inc_rename.config.cmd_name .. " " .. vim.fn.expand("<cword>")
              end,
              expr = true,
              desc = "Rename (inc-rename.nvim)",
              has = "rename",
            },
          },
        },
      },
    },
  },

  -- session
  {
    "folke/persistence.nvim",
    keys = {
      { "<leader>qs", false },
      { "<leader>qS", false },
      { "<leader>ql", false },
      { "<leader>qd", false },
    },
  },

  -- auto completion
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "enter",
        ["<Tab>"] = {
          "snippet_forward",
          function() -- sidekick next edit suggestion
            return require("sidekick").nes_jump_or_apply()
          end,
          "select_next",
          "fallback",
        },
        ["<S-Tab>"] = { "snippet_backward", "select_prev", "fallback" },
      },
      signature = { window = { border = "single" } },
      completion = {
        menu = { border = "single" },
        documentation = { window = { border = "single" } },
        list = {
          selection = {
            auto_insert = true,
          },
        },
      },
    },
  },
}
