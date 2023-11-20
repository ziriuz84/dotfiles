return {
  -- Adds Shade.nvim
  {
    "sunjon/shade.nvim",
    config = function()
      require("shade").setup({
        overlay_opacity = 50,
        opacity_step = 1,
        keys = {
          brightness_up = "<C-Up>",
          brightness_down = "<C-Down>",
        },
      })
    end,
    keys = {
      { "<leader>uS", "<cmd>lua require('shade').toggle()<CR>", desc = "Toggle Shade" },
    },
  },
}
