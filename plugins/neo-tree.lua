return {
  "nvim-neo-tree/neo-tree.nvim",
  vim.api.nvim_create_augroup("nobg", { clear = true }),
  vim.api.nvim_create_autocmd({ "ColorScheme" }, {
    desc = "Make all backgrounds transparent",
    group = "nobg",
    pattern = "*",
    callback = function()
      vim.api.nvim_set_hl(0, "Normal", { bg = "NONE", ctermbg = "NONE" })
      vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "NONE", ctermbg = "NONE" })
      vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "NONE", ctermbg = "NONE" })
      -- etc...
      -- Get the current window ID
      local win_id = vim.api.nvim_get_current_win()

      -- Set Neo-tree width to 30 columns
      vim.api.nvim_win_set_width(win_id, 10)
    end,
  }),
}
