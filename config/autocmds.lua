-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.opt.termguicolors = true
-- autosave active automatically not working
-- local first_buffer_entry = 1
--
-- vim.api.nvim_create_autocmd("BufEnter", {
--   callback = function()
--     if first_buffer_entry == 1 then
--       vim.cmd("AutoSave on")
--       first_buffer_entry = 0
--     end
--   end,
-- })

vim.api.nvim_create_augroup("nobg", { clear = true })
vim.api.nvim_create_autocmd({ "ColorScheme" }, {
  desc = "Make all backgrounds transparent",
  group = "nobg",
  pattern = "*",
  callback = function(opts)
    opts =
      {
        window = {
          width = 31,
        },
      }, 
    vim.api.nvim_set_hl(0, "Normal", { bg = "NONE", ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "NONE", ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "NONE", ctermbg = "NONE" })
    require("neo-tree").setup(opts)
  end,
})
