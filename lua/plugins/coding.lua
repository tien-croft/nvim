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
    "smjonas/inc-rename.nvim",
    cmd = "IncRename",
    lazy = false,
    config = true,
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
        ["<Tab>"] = { "snippet_forward", "select_next", "fallback" },
        ["<S-Tab>"] = { "snippet_backward", "select_prev", "fallback" },
      },
      signature = { window = { border = "single" } },
      completion = {
        menu = { border = "single" },
        documentation = { window = { border = "single" } },
        list = {
          selection = {
            preselect = false,
            auto_insert = true,
          },
        },
      },
    },
  },
}
