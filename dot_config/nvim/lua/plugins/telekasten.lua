return {
  {
    "renerocksai/calendar-vim",
  },
  {
    "renerocksai/telekasten.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    init = function()
      require("telekasten").setup({
        home = vim.fn.expand("~/Nextcloud/telekasten"),
      })
    end,
    keys = {
      { "<leader>T", "<cmd>Telekasten panel<cr>", desc = "+Telekasten" },
    },
  },
}
