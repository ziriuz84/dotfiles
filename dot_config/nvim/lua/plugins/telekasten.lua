return {
  {
    "renerocksai/calendar-vim",
  },
  {
    "renerocksai/telekasten.nvim",
    event = "VeryLazy",
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
  {
    "nvim-telescope/telescope-media-files.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-lua/popup.nvim", "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
    init = function()
      require("telescope").load_extension("media_files")
    end,
  },
  {
    "nvim-telescope/telescope-bibtex.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-telescope/telescope.nvim" },
    init = function()
      require("telescope").load_extension("bibtex")
    end,
  },
  {
    "nvim-telescope/telescope-symbols.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-telescope/telescope.nvim" },
  },
}
