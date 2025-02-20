return {
  "xiyaowong/transparent.nvim",
  config = function()
    require("transparent").setup({
      groups = {
        "Normal",
        "NormalNC",
        "Comment",
        -- Add other groups as needed
      },
    })
  end,
}
