return {
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        ["<leader>T"] = { name = "+Telekasten" },
      },
    },
  },
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
      { "<leader>To", "<cmd>Telekasten panel<cr>", desc = "Open Telekasten panel" },
    },
  },
}
