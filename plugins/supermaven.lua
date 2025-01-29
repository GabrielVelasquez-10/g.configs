return {
  "supermaven-inc/supermaven-nvim",

  event = "InsertEnter",

  cmd = {
    "SupermavenUseFree",
    "SupermavenUsePro",
  },

  color = { suggestion_color = "#00ff00" },

  opts = {
    keymaps = {
      accept_suggestion = nil, -- handled by nvim-cmp / blink.cmp
    },
    disable_inline_completion = vim.g.ai_cmp,
    ignore_filetypes = { "bigfile", "snacks_input", "snacks_notif" },
  },
  opts = function()
    require("supermaven-nvim.completion_preview").suggestion_group = "SupermavenSuggestion"
    LazyVim.cmp.actions.ai_accept = function()
      local suggestion = require("supermaven-nvim.completion_preview")
      if suggestion.has_suggestion() then
        LazyVim.create_undo()
        vim.schedule(function()
          suggestion.on_accept_suggestion()
        end)
        return true
      end
    end
  end,
}
