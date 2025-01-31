return {
  -- import colorschemes
  { "catppuccin/nvim", name = "catppuccin", lazy = false, opts = { flavour = "mocha" } },
  { "EdenEast/nightfox.nvim", name = "nightfox", lazy = false },
  { "diegoulloao/neofusion.nvim", name = "neofusion", lazy = false },
  { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false },
  -- import plugins

  {
    "LazyVim/LazyVim",
    opts = { -- options of colorscheme
      colorscheme = "carbonfox",
    },
  },
}
