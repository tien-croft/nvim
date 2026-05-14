return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    opts = {
      ensure_installed = {
        "fish",
        "cpp",
        "css",
        "javascript",
        "typescript",
        "svelte",
      },
      highlight = {
        enable = true,
      },
      fold = {
        enable = true,
      },
    },
  },
}
