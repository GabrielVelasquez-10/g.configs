return {
  -- import colorschemes
  { "catppuccin/nvim", name = "catppuccin", lazy = false, opts = { flavour = "mocha" } },
  { "EdenEast/nightfox.nvim", name = "nightfox", lazy = false },
  { "brenoprata10/nvim-highlight-colors" },
  { "echasnovski/mini.surround" },

  -- set colorscheme
  {
    "LazyVim/LazyVim",
    opts = { -- options of colorscheme
      colorscheme = "carbonfox",
    },
  },
}
