if true then return {} end
return {
  -- Adds Neogen.nvim
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        ["<leader>n"] = { name = "+Neogen" },
      },
    },
  },
  {
    "danymat/neogen",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = true,
    event = "VeryLazy",
    -- Uncomment next line if you want to follow only stable versions
    -- version = "*"
    keys = {
      { "<leader>nf", "<cmd>Neogen func<CR>", desc = "Generate function documentation" },
      { "<leader>nF", "<cmd>Neogen file<CR>", desc = "Generate file documentation" },
      { "<leader>nt", "<cmd>Neogen type<CR>", desc = "Generate type/documentation" },
      { "<leader>nc", "<cmd>Neogen class<CR>", desc = "Generate class documentation" },
    },
  },
}
